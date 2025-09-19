  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'API_INSPECTIONLOT_SRV' ) ##NO_TEXT.

    def_a_inspection_characteris_2( ).
    def_a_inspection_lot_type( ).
    def_a_inspection_lot_with_st_2( ).
    def_a_inspection_operation_typ( ).
    def_a_inspection_result_type( ).
    def_a_inspection_result_valu_2( ).
    def_a_inspection_subset_type( ).
    def_a_insp_lot_matl_doc_item_t( ).
    def_a_insp_lot_matl_doc_itm__2( ).
    def_a_insp_lot_serial_number_t( ).
    def_a_insp_lot_usage_decisio_2( ).
    def_a_insp_sample_characteri_2( ).
    def_a_insp_sample_result_type( ).
    def_a_inspection_subset_trigge( ).
    define_primitive_types( ).

  ENDMETHOD.