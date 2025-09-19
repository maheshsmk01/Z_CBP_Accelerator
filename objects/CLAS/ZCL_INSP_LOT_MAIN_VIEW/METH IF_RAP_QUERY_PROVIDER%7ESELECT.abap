  METHOD if_rap_query_provider~select.

    IF io_request->is_data_requested( ).

      DATA(lv_top)     = io_request->get_paging( )->get_page_size( ).
      IF lv_top LT 0.
        lv_top = 1.
      ENDIF.

      DATA(lv_skip)    = io_request->get_paging( )->get_offset( ).

      DATA(lt_sort)    = io_request->get_sort_elements( ).

      TYPES: tr_matnr TYPE RANGE OF matnr,
             tr_plant TYPE RANGE OF werks_d,
             tr_batch TYPE RANGE OF charg_d.

      DATA: lt_final  TYPE STANDARD TABLE OF zpr_insp_lot_view,
            lt_result TYPE STANDARD TABLE OF zpr_insp_lot_view,
            ls_final  TYPE zpr_insp_lot_view,
            lr_lot    TYPE zpr_r_t_lot,
            ls_lot    LIKE LINE OF lr_lot,
            lr_matnr  TYPE tr_matnr,
            ls_matnr  LIKE LINE OF lr_matnr,
            lr_plant  TYPE tr_plant,
            ls_plant  LIKE LINE OF lr_plant,
            lr_batch  TYPE tr_batch,
            ls_batch  LIKE LINE OF lr_batch.
      TRY.

          DATA(lt_get_filter) = io_request->get_filter( )->get_as_ranges( ).
          DATA(ls_get_filter_sql) = io_request->get_filter( )->get_as_sql_string( ).
        CATCH cx_rap_query_filter_no_range INTO DATA(lx_remote).
          IF lx_remote->get_text( ) IS NOT INITIAL.
          ENDIF.
      ENDTRY.
      DATA : lv_orderby TYPE string.
      LOOP AT lt_sort INTO DATA(ls_sort).
        IF ls_sort-descending = abap_true.
          lv_orderby = |'{ lv_orderby } { ls_sort-element_name } DESCENDING '|.
        ELSE.
          lv_orderby = |'{ lv_orderby } { ls_sort-element_name } ASCENDING '|.
        ENDIF.
      ENDLOOP.
      IF lv_orderby IS INITIAL.
        lv_orderby = 'Lot'.
      ENDIF.

      LOOP AT lt_get_filter INTO DATA(ls_filter).
        CASE ls_filter-name.
          WHEN 'LOT'.
            LOOP AT ls_filter-range INTO DATA(ls_filter_data).
              ls_lot-sign = 'I'.
              ls_lot-option = 'EQ'.
              ls_lot-low = ls_filter_data-low.
              APPEND ls_lot TO lr_lot.
              CLEAR: ls_lot.
            ENDLOOP.
          WHEN 'MATERIAL'.
            LOOP AT ls_filter-range INTO ls_filter_data.
              ls_matnr-sign = 'I'.
              ls_matnr-option = 'EQ'.
              ls_matnr-low = ls_filter_data-low.
              APPEND ls_matnr TO lr_matnr.
              CLEAR: ls_matnr.
            ENDLOOP.
          WHEN 'PLANT'.
            LOOP AT ls_filter-range INTO ls_filter_data.
              ls_plant-sign = 'I'.
              ls_plant-option = 'EQ'.
              ls_plant-low = ls_filter_data-low.
              APPEND ls_plant TO lr_plant.
              CLEAR: ls_plant.
            ENDLOOP.
          WHEN 'BATCH'.
            LOOP AT ls_filter-range INTO ls_filter_data.
              ls_batch-sign = 'I'.
              ls_batch-option = 'EQ'.
              ls_batch-low = ls_filter_data-low.
              APPEND ls_batch TO lr_batch.
              CLEAR: ls_batch.
            ENDLOOP.
        ENDCASE.
      ENDLOOP.

      SELECT _lot~inspectionlot, _lot~material, _lot~batch, _lot~plant, _lot~inspectionlotquantity, _lot~inspectionlotquantityunit,
             _stat~statuscode
       FROM i_inspectionlot AS _lot
       LEFT OUTER JOIN i_inspectionlotstatus1 AS _stat ON _lot~inspectionlot = _stat~inspectionlot
       WHERE _lot~inspectionlot IN @lr_lot AND
             _lot~inspectionlotorigin = '17' AND
             _lot~inspectionlottype = '01' AND
             _lot~material IN @lr_matnr AND
             _lot~plant IN @lr_plant AND
             _lot~batch IN @lr_batch AND
             _stat~statuscode IN ( 'I0213', 'I0218' )
       INTO TABLE @DATA(lt_data).

      IF sy-subrc EQ 0.
        SORT lt_data BY inspectionlot statuscode.
        DATA(lt_ud) = lt_data[].
        DELETE lt_data WHERE statuscode NE 'I0213'.
        DELETE lt_ud WHERE statuscode NE 'I0218'.
        LOOP AT lt_data INTO DATA(ls_data).
          READ TABLE lt_ud INTO DATA(ls_ud) WITH KEY inspectionlot = ls_data-inspectionlot.
          IF sy-subrc NE 0.
            ls_final-lot = ls_data-inspectionlot.
            ls_final-batch = ls_data-batch.
            ls_final-material = ls_data-material.
            ls_final-plant = ls_data-plant.
            ls_final-quantity = ls_data-inspectionlotquantity.
            ls_final-unit = ls_data-inspectionlotquantityunit.
            APPEND ls_final TO lt_final.
          ENDIF.
          CLEAR: ls_data, ls_ud, ls_final.
        ENDLOOP.
      ENDIF.

      SELECT * FROM @lt_final AS output
*      WHERE (ls_get_filter_sql)
       ORDER BY (lv_orderby)
                  INTO CORRESPONDING FIELDS OF TABLE @lt_result
                  UP TO @lv_top ROWS
                 OFFSET @lv_skip .

      IF io_request->is_total_numb_of_rec_requested(  ).
        io_response->set_total_number_of_records( lines( lt_final ) ).
      ENDIF.
      io_response->set_data( lt_result ).

    ENDIF.

  ENDMETHOD.