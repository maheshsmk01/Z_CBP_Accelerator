  METHOD def_a_inspection_subset_trigge.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'A_INSPECTION_SUBSET_TRIGGE' ).
    lo_function->set_edm_name( 'A_InspectionSubsetTrigger_valuation' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_function->/iwbep/if_v4_pm_fu_advanced~set_parameter_structure_info( VALUE tys_parameters_1( ) ).

    lo_function_import = lo_function->create_function_import( 'A_INSPECTION_SUBSET_TRIGGE' ).
    lo_function_import->set_edm_name( 'A_InspectionSubsetTrigger_valuation' ) ##NO_TEXT.
    lo_function_import->/iwbep/if_v4_pm_func_imp_v2~set_http_method( 'POST' ).


    lo_parameter = lo_function->create_parameter( 'INSPECTION_LOT' ).
    lo_parameter->set_edm_name( 'InspectionLot' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'INSPECTION_LOT' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'INSP_PLAN_OPERATION_INTERN' ).
    lo_parameter->set_edm_name( 'InspPlanOperationInternalID' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'INSP_PLAN_OPERATION_INTERN' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'INSPECTION_SUBSET_INTERNAL' ).
    lo_parameter->set_edm_name( 'InspectionSubsetInternalID' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'INSPECTION_SUBSET_INTERNAL' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_entity_type( 'A_INSPECTION_SUBSET_TYPE' ).

  ENDMETHOD.