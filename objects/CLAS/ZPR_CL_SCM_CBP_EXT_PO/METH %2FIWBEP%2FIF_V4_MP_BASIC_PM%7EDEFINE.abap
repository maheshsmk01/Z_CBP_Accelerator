  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'API_PURCHASEORDER_PROCESS_SRV' ) ##NO_TEXT.

    def_dummy_function_import_resu( ).
    def_get_pdfresult( ).
    def_a_posubcontracting_compo_2( ).
    def_a_purchase_order_item_no_2( ).
    def_a_purchase_order_item_type( ).
    def_a_purchase_order_note_type( ).
    def_a_purchase_order_schedul_2( ).
    def_a_purchase_order_type( ).
    def_a_pur_ord_account_assign_2( ).
    def_a_pur_ord_pricing_elemen_2( ).
    def_get_output_binary_data( ).
    def_get_pdf( ).
    define_primitive_types( ).

  ENDMETHOD.