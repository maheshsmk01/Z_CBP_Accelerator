"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>API_INSPECTIONLOT_SRV</em>
CLASS zpr_cl_scm_cbp_ext_insp DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">Types for "OData Primitive Types"</p>
      BEGIN OF tys_types_for_prim_types,
        "! Used for primitive type INSPECTION_LOT
        inspection_lot             TYPE c LENGTH 12,
        "! Used for primitive type INSPECTION_SUBSET_INTERNAL
        inspection_subset_internal TYPE c LENGTH 6,
        "! Used for primitive type INSP_PLAN_OPERATION_INTERN
        insp_plan_operation_intern TYPE c LENGTH 8,
      END OF tys_types_for_prim_types.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function A_InspectionSubsetTrigger_valuation</p>
      "! <em>with the internal name</em> A_INSPECTION_SUBSET_TRIGGE
      BEGIN OF tys_parameters_1,
        "! InspectionLot
        inspection_lot             TYPE c LENGTH 12,
        "! InspPlanOperationInternalID
        insp_plan_operation_intern TYPE c LENGTH 8,
        "! InspectionSubsetInternalID
        inspection_subset_internal TYPE c LENGTH 6,
      END OF tys_parameters_1,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_1</p>
      tyt_parameters_1 TYPE STANDARD TABLE OF tys_parameters_1 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_InspectionCharacteristicType</p>
      BEGIN OF tys_a_inspection_characteris_2,
        "! <em>Key property</em> InspectionLot
        inspection_lot             TYPE c LENGTH 12,
        "! <em>Key property</em> InspPlanOperationInternalID
        insp_plan_operation_intern TYPE c LENGTH 8,
        "! <em>Key property</em> InspectionCharacteristic
        inspection_characteristic  TYPE c LENGTH 4,
        "! InspectionSpecificationText
        inspection_specification_t TYPE c LENGTH 40,
        "! HasInspCharcPrtlSmpl
        has_insp_charc_prtl_smpl   TYPE c LENGTH 1,
        "! InspSpecIsQuantitative
        insp_spec_is_quantitative  TYPE abap_bool,
        "! InspSpecIsMeasuredValueRqd
        insp_spec_is_measured_valu TYPE c LENGTH 1,
        "! InspSpecIsSelectedSetRequired
        insp_spec_is_selected_set  TYPE c LENGTH 1,
        "! InspSpecIsLongTermInspection
        insp_spec_is_long_term_ins TYPE c LENGTH 1,
        "! InspSpecRecordingType
        insp_spec_recording_type   TYPE c LENGTH 1,
        "! InspResultIsDocumentationRqd
        insp_result_is_documentati TYPE c LENGTH 1,
        "! InspSpecCharcCategory
        insp_spec_charc_category   TYPE c LENGTH 1,
        "! InspSpecResultCalculation
        insp_spec_result_calculati TYPE c LENGTH 1,
        "! InspCharcIsNotPlanned
        insp_charc_is_not_planned  TYPE abap_bool,
        "! InspectionMethod
        inspection_method          TYPE c LENGTH 8,
        "! InspectionMethodPlant
        inspection_method_plant    TYPE c LENGTH 4,
        "! InspectionMethodVersion
        inspection_method_version  TYPE c LENGTH 6,
        "! InspectionSpecificationPlant
        inspection_specification_p TYPE c LENGTH 4,
        "! InspectionSpecification
        inspection_specification   TYPE c LENGTH 8,
        "! InspectionSpecificationVersion
        inspection_specification_v TYPE c LENGTH 6,
        "! InspectionCharacteristicStatus
        inspection_characteristi_2 TYPE c LENGTH 1,
        "! InspSpecDecimalPlaces
        insp_spec_decimal_places   TYPE int1,
        "! InspectionSpecificationUnit
        inspection_specification_u TYPE c LENGTH 3,
        "! InspSampleValuationRule
        insp_sample_valuation_rule TYPE c LENGTH 2,
        "! QuantityUnit
        quantity_unit              TYPE c LENGTH 3,
        "! InspCharacteristicSampleSize
        insp_characteristic_sample TYPE int4,
        "! InspCharacteristicSampleUnit
        insp_characteristic_samp_2 TYPE c LENGTH 3,
        "! InspSpecSampleQuantityFactor
        insp_spec_sample_quantity  TYPE p LENGTH 3 DECIMALS 2,
        "! InspSpecTargetValue
        insp_spec_target_value     TYPE /iwbep/v4_float,
        "! InspSpecFrmtdTargetValue
        insp_spec_frmtd_target_val TYPE c LENGTH 22,
        "! InspSpecHasTargetValue
        insp_spec_has_target_value TYPE c LENGTH 1,
        "! InspSpecUpperLimit
        insp_spec_upper_limit      TYPE /iwbep/v4_float,
        "! InspSpecFrmtdUpperLimit
        insp_spec_frmtd_upper_limi TYPE c LENGTH 22,
        "! InspSpecHasUpperLimit
        insp_spec_has_upper_limit  TYPE c LENGTH 1,
        "! InspSpecLowerLimit
        insp_spec_lower_limit      TYPE /iwbep/v4_float,
        "! InspSpecFrmtdLowerLimit
        insp_spec_frmtd_lower_limi TYPE c LENGTH 22,
        "! InspSpecHasLowerLimit
        insp_spec_has_lower_limit  TYPE c LENGTH 1,
        "! InspSpecImportanceCode
        insp_spec_importance_code  TYPE c LENGTH 2,
        "! InspLotTestEquipInternalID
        insp_lot_test_equip_intern TYPE c LENGTH 8,
        "! SelectedCodeSet
        selected_code_set          TYPE c LENGTH 8,
        "! SelectedCodeSetPlant
        selected_code_set_plant    TYPE c LENGTH 4,
        "! InspectorQualification
        inspector_qualification    TYPE c LENGTH 5,
        "! InspSpecInformationField1
        insp_spec_information_fiel TYPE c LENGTH 10,
        "! InspSpecInformationField2
        insp_spec_information_fi_2 TYPE c LENGTH 20,
        "! InspSpecInformationField3
        insp_spec_information_fi_3 TYPE c LENGTH 40,
        "! InspectionScope
        inspection_scope           TYPE p LENGTH 7 DECIMALS 3,
        "! InspCharcQuantity
        insp_charc_quantity        TYPE p LENGTH 7 DECIMALS 3,
        "! InspSpecControlIndicators
        insp_spec_control_indicato TYPE c LENGTH 30,
        "! CharacteristicAttributeCatalog
        characteristic_attribute_c TYPE c LENGTH 1,
        "! UnplndCharcInspSubsetIntID
        unplnd_charc_insp_subset_i TYPE c LENGTH 6,
        "! InspLotDynamicRule
        insp_lot_dynamic_rule      TYPE c LENGTH 3,
        "! InspCharcConfirmationNumber
        insp_charc_confirmation_nu TYPE c LENGTH 8,
        "! ChangedDateTime
        changed_date_time          TYPE timestamp,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_a_inspection_characteris_2,
      "! <p class="shorttext synchronized">List of A_InspectionCharacteristicType</p>
      tyt_a_inspection_characteris_2 TYPE STANDARD TABLE OF tys_a_inspection_characteris_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_InspectionLotType</p>
      BEGIN OF tys_a_inspection_lot_type,
        "! <em>Key property</em> InspectionLot
        inspection_lot             TYPE c LENGTH 12,
        "! Material
        material                   TYPE c LENGTH 40,
        "! Batch
        batch                      TYPE c LENGTH 10,
        "! Plant
        plant                      TYPE c LENGTH 4,
        "! InspectionLotOrigin
        inspection_lot_origin      TYPE c LENGTH 2,
        "! OrderInternalBillOfOperations
        order_internal_bill_of_ope TYPE c LENGTH 10,
        "! ManufacturingOrder
        manufacturing_order        TYPE c LENGTH 12,
        "! InspectionLotText
        inspection_lot_text        TYPE c LENGTH 40,
        "! InspectionLotType
        inspection_lot_type        TYPE c LENGTH 8,
        "! InspectionLotQuantity
        inspection_lot_quantity    TYPE p LENGTH 7 DECIMALS 3,
        "! InspectionLotActualQuantity
        inspection_lot_actual_quan TYPE p LENGTH 7 DECIMALS 3,
        "! InspectionLotDefectiveQuantity
        inspection_lot_defective_q TYPE p LENGTH 7 DECIMALS 3,
        "! InspectionLotQuantityUnit
        inspection_lot_quantity_un TYPE c LENGTH 3,
        "! InspLotCreatedOnLocalDate
        insp_lot_created_on_local  TYPE datn,
        "! InspSubsetFieldCombination
        insp_subset_field_combinat TYPE c LENGTH 3,
        "! InspLotNmbrOpenLongTermCharc
        insp_lot_nmbr_open_long_te TYPE int2,
        "! StatusObject
        status_object              TYPE c LENGTH 22,
        "! StatusObjectCategory
        status_object_category     TYPE c LENGTH 3,
        "! InspectionLotObjectText
        inspection_lot_object_text TYPE c LENGTH 40,
        "! StatusProfile
        status_profile             TYPE c LENGTH 8,
        "! MatlQualityAuthorizationGroup
        matl_quality_authorization TYPE c LENGTH 6,
        "! InspectionLotHasQuantity
        inspection_lot_has_quantit TYPE abap_bool,
        "! InspLotIsCreatedAutomatically
        insp_lot_is_created_automa TYPE abap_bool,
        "! InspectionLotHasPartialLots
        inspection_lot_has_partial TYPE abap_bool,
        "! InspectionLotHasAppraisalCosts
        inspection_lot_has_apprais TYPE abap_bool,
        "! InspLotHasSubsets
        insp_lot_has_subsets       TYPE abap_bool,
        "! InspLotIsAutomUsgeDcsnPossible
        insp_lot_is_autom_usge_dcs TYPE abap_bool,
        "! PurchasingDocumentCategory
        purchasing_document_catego TYPE c LENGTH 1,
        "! InspLotHasConfignSpecification
        insp_lot_has_confign_speci TYPE abap_bool,
        "! GoodsReceiptIsMovedToBlkdStock
        goods_receipt_is_moved_to  TYPE c LENGTH 1,
        "! InspLotIsDocumentationRequired
        insp_lot_is_documentation  TYPE abap_bool,
        "! InspLotIsTaskListRequired
        insp_lot_is_task_list_requ TYPE abap_bool,
        "! InspLotHasManualSampleSize
        insp_lot_has_manual_sample TYPE abap_bool,
        "! InspLotHasMaterialSpec
        insp_lot_has_material_spec TYPE abap_bool,
        "! InspectionLotApproval
        inspection_lot_approval    TYPE c LENGTH 1,
        "! InspLotDigitalSgntrResultsRecg
        insp_lot_digital_sgntr_res TYPE c LENGTH 1,
        "! InspLotDigitalSgntrInUsgeDcsn
        insp_lot_digital_sgntr_in  TYPE c LENGTH 1,
        "! InspLotIsBatchRequired
        insp_lot_is_batch_required TYPE abap_bool,
        "! InspLotUsageInStabilityStudy
        insp_lot_usage_in_stabilit TYPE c LENGTH 1,
        "! InspLotIsStockPostingCompleted
        insp_lot_is_stock_posting  TYPE abap_bool,
        "! InspectionLotHasUsageDecision
        inspection_lot_has_usage_d TYPE abap_bool,
        "! NumberOfSerialNumbers
        number_of_serial_numbers   TYPE int4,
        "! InspLotIsSerialNmbrPossible
        insp_lot_is_serial_nmbr_po TYPE abap_bool,
        "! InspectionLotIsSkipped
        inspection_lot_is_skipped  TYPE abap_bool,
        "! InspectionLotIsFullInspection
        inspection_lot_is_full_ins TYPE abap_bool,
        "! InspectionLotDynamicLevel
        inspection_lot_dynamic_lev TYPE c LENGTH 1,
        "! SamplingProcedure
        sampling_procedure         TYPE c LENGTH 8,
        "! InspLotCreatedOnLocalTime
        insp_lot_created_on_loca_2 TYPE timn,
        "! InspectionLotCreatedBy
        inspection_lot_created_by  TYPE c LENGTH 12,
        "! InspectionLotCreatedOn
        inspection_lot_created_on  TYPE datn,
        "! InspectionLotCreatedOnTime
        inspection_lot_created_o_2 TYPE timn,
        "! InspectionLotChangedBy
        inspection_lot_changed_by  TYPE c LENGTH 12,
        "! InspectionLotChangeDate
        inspection_lot_change_date TYPE datn,
        "! InspectionLotChangeTime
        inspection_lot_change_time TYPE timn,
        "! ChangedDateTime
        changed_date_time          TYPE timestamp,
        "! InspectionLotStartDate
        inspection_lot_start_date  TYPE datn,
        "! InspectionLotStartTime
        inspection_lot_start_time  TYPE timn,
        "! InspectionLotEndDate
        inspection_lot_end_date    TYPE datn,
        "! InspectionLotEndTime
        inspection_lot_end_time    TYPE timn,
        "! BillOfOperationsType
        bill_of_operations_type    TYPE c LENGTH 1,
        "! BillOfOperationsGroup
        bill_of_operations_group   TYPE c LENGTH 8,
        "! BillOfOperationsUsage
        bill_of_operations_usage   TYPE c LENGTH 3,
        "! BillOfOperationsVariant
        bill_of_operations_variant TYPE c LENGTH 2,
        "! BillOfOperationsChangeStateID
        bill_of_operations_change  TYPE c LENGTH 8,
        "! InspectionSubsetType
        inspection_subset_type     TYPE c LENGTH 1,
        "! SmplDrawingProcedure
        smpl_drawing_procedure     TYPE c LENGTH 8,
        "! SmplDrawingProcedureVersion
        smpl_drawing_procedure_ver TYPE c LENGTH 6,
        "! SmplDrwgProcedIsConfRequired
        smpl_drwg_proced_is_conf_r TYPE abap_bool,
        "! InspLotSelectionMaterial
        insp_lot_selection_materia TYPE c LENGTH 40,
        "! InspLotSelMatlRevisionLvl
        insp_lot_sel_matl_revision TYPE c LENGTH 2,
        "! InspLotSelectionPlant
        insp_lot_selection_plant   TYPE c LENGTH 4,
        "! InspLotSelectionSupplier
        insp_lot_selection_supplie TYPE c LENGTH 10,
        "! InspLotSelectionManufacturer
        insp_lot_selection_manufac TYPE c LENGTH 10,
        "! InspLotSelectionCustomer
        insp_lot_selection_custome TYPE c LENGTH 10,
        "! InspLotSelBillOfOperationsUsge
        insp_lot_sel_bill_of_opera TYPE c LENGTH 3,
        "! InspLotSelectionValidFromDate
        insp_lot_selection_valid_f TYPE datn,
        "! ProductionVersion
        production_version         TYPE c LENGTH 4,
        "! SalesOperationsPlanningOrder
        sales_operations_planning  TYPE c LENGTH 12,
        "! IsBusinessPurposeCompleted
        is_business_purpose_comple TYPE c LENGTH 1,
        "! Customer
        customer                   TYPE c LENGTH 10,
        "! Supplier
        supplier                   TYPE c LENGTH 10,
        "! BatchBySupplier
        batch_by_supplier          TYPE c LENGTH 15,
        "! Manufacturer
        manufacturer               TYPE c LENGTH 10,
        "! ManufacturerPartNmbr
        manufacturer_part_nmbr     TYPE c LENGTH 40,
        "! MaterialRevisionLevel
        material_revision_level    TYPE c LENGTH 2,
        "! MaterialIsBatchManaged
        material_is_batch_managed  TYPE abap_bool,
        "! BatchStorageLocation
        batch_storage_location     TYPE c LENGTH 4,
        "! MaterialCompIsSpecialStock
        material_comp_is_special_s TYPE c LENGTH 1,
        "! PurchasingOrganization
        purchasing_organization    TYPE c LENGTH 4,
        "! PurchasingDocument
        purchasing_document        TYPE c LENGTH 10,
        "! PurchasingDocumentItem
        purchasing_document_item   TYPE c LENGTH 5,
        "! ScheduleLine
        schedule_line              TYPE c LENGTH 4,
        "! AccountingDocumentType
        accounting_document_type   TYPE c LENGTH 2,
        "! MaterialDocumentYear
        material_document_year     TYPE c LENGTH 4,
        "! MaterialDocument
        material_document          TYPE c LENGTH 10,
        "! MaterialDocumentItem
        material_document_item     TYPE c LENGTH 4,
        "! MatlDocLatestPostgDate
        matl_doc_latest_postg_date TYPE datn,
        "! GoodsMovementType
        goods_movement_type        TYPE c LENGTH 3,
        "! InspectionLotPlant
        inspection_lot_plant       TYPE c LENGTH 4,
        "! InspectionLotStorageLocation
        inspection_lot_storage_loc TYPE c LENGTH 4,
        "! Warehouse
        warehouse                  TYPE c LENGTH 3,
        "! StorageType
        storage_type               TYPE c LENGTH 3,
        "! StorageBin
        storage_bin                TYPE c LENGTH 10,
        "! SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! SalesOrderItem
        sales_order_item           TYPE c LENGTH 6,
        "! DeliveryDocument
        delivery_document          TYPE c LENGTH 10,
        "! DeliveryDocumentItem
        delivery_document_item     TYPE c LENGTH 6,
        "! DeliveryCategory
        delivery_category          TYPE c LENGTH 3,
        "! InspectionDeliveryCategory
        inspection_delivery_catego TYPE c LENGTH 3,
        "! Route
        route                      TYPE c LENGTH 6,
        "! BillToPartyCountry
        bill_to_party_country      TYPE c LENGTH 3,
        "! SoldToParty
        sold_to_party              TYPE c LENGTH 10,
        "! SalesOrganization
        sales_organization         TYPE c LENGTH 4,
        "! MaterialByCustomer
        material_by_customer       TYPE c LENGTH 35,
        "! Language
        language                   TYPE c LENGTH 2,
        "! InspLotNmbrAddlRecordedCharc
        insp_lot_nmbr_addl_recorde TYPE int2,
        "! InspLotNmbrOpenShortTermCharc
        insp_lot_nmbr_open_short_t TYPE int2,
        "! InspectionLotContainer
        inspection_lot_container   TYPE p LENGTH 4 DECIMALS 3,
        "! InspectionLotContainerUnit
        inspection_lot_container_u TYPE c LENGTH 3,
        "! InspectionLotSampleQuantity
        inspection_lot_sample_quan TYPE p LENGTH 7 DECIMALS 3,
        "! InspectionLotSampleUnit
        inspection_lot_sample_unit TYPE c LENGTH 3,
        "! InspLotDynamicRule
        insp_lot_dynamic_rule      TYPE c LENGTH 3,
        "! InspLotDynamicTrggrPoint
        insp_lot_dynamic_trggr_poi TYPE c LENGTH 1,
        "! InspectionDynamicStage
        inspection_dynamic_stage   TYPE c LENGTH 4,
        "! InspectionSeverity
        inspection_severity        TYPE c LENGTH 3,
        "! InspLotQtyToFree
        insp_lot_qty_to_free       TYPE p LENGTH 7 DECIMALS 3,
        "! InspLotQtyToScrap
        insp_lot_qty_to_scrap      TYPE p LENGTH 7 DECIMALS 3,
        "! InspLotQtyToSample
        insp_lot_qty_to_sample     TYPE p LENGTH 7 DECIMALS 3,
        "! InspLotQtyToBlocked
        insp_lot_qty_to_blocked    TYPE p LENGTH 7 DECIMALS 3,
        "! InspLotQtyToReserves
        insp_lot_qty_to_reserves   TYPE p LENGTH 7 DECIMALS 3,
        "! InspLotQtyToAnotherMaterial
        insp_lot_qty_to_another_ma TYPE p LENGTH 7 DECIMALS 3,
        "! InspLotMaterialPostedTo
        insp_lot_material_posted_t TYPE c LENGTH 40,
        "! InspLotBatchTransferredTo
        insp_lot_batch_transferred TYPE c LENGTH 10,
        "! InspLotQtyReturnedToSupplier
        insp_lot_qty_returned_to_s TYPE p LENGTH 7 DECIMALS 3,
        "! InspLotQtyToSpecialStock
        insp_lot_qty_to_special_st TYPE p LENGTH 7 DECIMALS 3,
        "! InspLotQtyToOtherStock
        insp_lot_qty_to_other_stoc TYPE p LENGTH 7 DECIMALS 3,
        "! InspLotQtyToBePosted
        insp_lot_qty_to_be_posted  TYPE p LENGTH 7 DECIMALS 3,
        "! InspLotSmplQtyForLongTermChar
        insp_lot_smpl_qty_for_long TYPE p LENGTH 7 DECIMALS 3,
        "! InspLotQtyInspected
        insp_lot_qty_inspected     TYPE p LENGTH 7 DECIMALS 3,
        "! InspLotQtyDestroyed
        insp_lot_qty_destroyed     TYPE p LENGTH 7 DECIMALS 3,
        "! InspectionLotScrapRatio
        inspection_lot_scrap_ratio TYPE /iwbep/v4_float,
        "! InspLotUsageDecisionTool
        insp_lot_usage_decision_to TYPE c LENGTH 1,
        "! InspectionLotAllowedScrapRatio
        inspection_lot_allowed_scr TYPE /iwbep/v4_float,
        "! QualityCostCollector
        quality_cost_collector     TYPE c LENGTH 12,
        "! ConsumptionPosting
        consumption_posting        TYPE c LENGTH 1,
        "! AccountAssignmentCategory
        account_assignment_categor TYPE c LENGTH 1,
        "! PurchasingDocumentItemCategory
        purchasing_document_item_c TYPE c LENGTH 1,
        "! InspLotAcctAssgmtKey
        insp_lot_acct_assgmt_key   TYPE c LENGTH 1,
        "! CostCenter
        cost_center                TYPE c LENGTH 10,
        "! ReservationItem
        reservation_item           TYPE c LENGTH 4,
        "! MasterFixedAsset
        master_fixed_asset         TYPE c LENGTH 12,
        "! FixedAsset
        fixed_asset                TYPE c LENGTH 4,
        "! SalesOrdStockWBSElement
        sales_ord_stock_wbselement TYPE c LENGTH 24,
        "! ProjectNetwork
        project_network            TYPE c LENGTH 12,
        "! NetworkActivityInternalID
        network_activity_internal  TYPE c LENGTH 8,
        "! InventorySpclStkSalesDocument
        inventory_spcl_stk_sales_d TYPE c LENGTH 10,
        "! InventorySpclStkSalesDocItm
        inventory_spcl_stk_sales_2 TYPE c LENGTH 6,
        "! ProfitabilitySegment
        profitability_segment      TYPE c LENGTH 10,
        "! ProfitCenter
        profit_center              TYPE c LENGTH 10,
        "! BusinessArea
        business_area              TYPE c LENGTH 4,
        "! GLAccount
        glaccount                  TYPE c LENGTH 10,
        "! ControllingArea
        controlling_area           TYPE c LENGTH 4,
        "! CompanyCode
        company_code               TYPE c LENGTH 4,
        "! SerialNumberProfile
        serial_number_profile      TYPE c LENGTH 4,
        "! InspLotCostCollectorSalesOrder
        insp_lot_cost_collector_sa TYPE c LENGTH 10,
        "! InspLotCostCollectorSlsOrdItem
        insp_lot_cost_collector_sl TYPE c LENGTH 6,
        "! InspLotCostCollectorWBSElement
        insp_lot_cost_collector_wb TYPE c LENGTH 24,
        "! InspLotExternalNumber
        insp_lot_external_number   TYPE c LENGTH 30,
        "! InspectionLotPriorityPoints
        inspection_lot_priority_po TYPE int4,
        "! MaintenancePlan
        maintenance_plan           TYPE c LENGTH 12,
        "! MaintenancePlanItemIntID
        maintenance_plan_item_int  TYPE c LENGTH 16,
        "! MaintenanceStrategy
        maintenance_strategy       TYPE c LENGTH 6,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_a_inspection_lot_type,
      "! <p class="shorttext synchronized">List of A_InspectionLotType</p>
      tyt_a_inspection_lot_type TYPE STANDARD TABLE OF tys_a_inspection_lot_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_InspectionLotWithStatusType</p>
      BEGIN OF tys_a_inspection_lot_with_st_2,
        "! <em>Key property</em> InspectionLot
        inspection_lot             TYPE c LENGTH 12,
        "! InspectionLotStatusCreated
        inspection_lot_status_crea TYPE c LENGTH 1,
        "! InspectionLotStatusReleased
        inspection_lot_status_rele TYPE c LENGTH 1,
        "! InspectionLotStatusSkip
        inspection_lot_status_skip TYPE c LENGTH 1,
        "! InspLotStatusRsltsConfirmed
        insp_lot_status_rslts_conf TYPE c LENGTH 1,
        "! InspLotStsDefectsRecorded
        insp_lot_sts_defects_recor TYPE c LENGTH 1,
        "! InspLotStsShrtTrmInspCmpltd
        insp_lot_sts_shrt_trm_insp TYPE c LENGTH 1,
        "! InspLotStatusInspCompleted
        insp_lot_status_insp_compl TYPE c LENGTH 1,
        "! InspLotStatusCanceled
        insp_lot_status_canceled   TYPE c LENGTH 1,
        "! InspLotStatusRepair
        insp_lot_status_repair     TYPE c LENGTH 1,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_a_inspection_lot_with_st_2,
      "! <p class="shorttext synchronized">List of A_InspectionLotWithStatusType</p>
      tyt_a_inspection_lot_with_st_2 TYPE STANDARD TABLE OF tys_a_inspection_lot_with_st_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_InspectionOperationType</p>
      BEGIN OF tys_a_inspection_operation_typ,
        "! <em>Key property</em> InspectionLot
        inspection_lot             TYPE c LENGTH 12,
        "! <em>Key property</em> InspPlanOperationInternalID
        insp_plan_operation_intern TYPE c LENGTH 8,
        "! OrderInternalBillOfOperations
        order_internal_bill_of_ope TYPE c LENGTH 10,
        "! InspectionOperation
        inspection_operation       TYPE c LENGTH 4,
        "! InspectionOperationPlant
        inspection_operation_plant TYPE c LENGTH 4,
        "! BillOfOperationsType
        bill_of_operations_type    TYPE c LENGTH 1,
        "! BOOOperationInternalID
        boooperation_internal_id   TYPE c LENGTH 8,
        "! WorkCenterInternalID
        work_center_internal_id    TYPE c LENGTH 8,
        "! StatusObject
        status_object              TYPE c LENGTH 22,
        "! OperationControlProfile
        operation_control_profile  TYPE c LENGTH 4,
        "! OperationConfirmation
        operation_confirmation     TYPE c LENGTH 10,
        "! InspectionSubSystem
        inspection_sub_system      TYPE c LENGTH 6,
        "! OperationText
        operation_text             TYPE c LENGTH 40,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_a_inspection_operation_typ,
      "! <p class="shorttext synchronized">List of A_InspectionOperationType</p>
      tyt_a_inspection_operation_typ TYPE STANDARD TABLE OF tys_a_inspection_operation_typ WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_InspectionResultType</p>
      BEGIN OF tys_a_inspection_result_type,
        "! <em>Key property</em> InspectionLot
        inspection_lot             TYPE c LENGTH 12,
        "! <em>Key property</em> InspPlanOperationInternalID
        insp_plan_operation_intern TYPE c LENGTH 8,
        "! <em>Key property</em> InspectionCharacteristic
        inspection_characteristic  TYPE c LENGTH 4,
        "! InspectionResultStatus
        inspection_result_status   TYPE c LENGTH 1,
        "! InspectionResultAttribute
        inspection_result_attribut TYPE c LENGTH 1,
        "! InspectionResultOrigin
        inspection_result_origin   TYPE c LENGTH 2,
        "! Inspector
        inspector                  TYPE c LENGTH 12,
        "! InspectionValuationResult
        inspection_valuation_resul TYPE c LENGTH 1,
        "! InspectionResultMeanValue
        inspection_result_mean_val TYPE /iwbep/v4_float,
        "! InspResultFrmtdMeanValue
        insp_result_frmtd_mean_val TYPE c LENGTH 22,
        "! InspectionResultHasMeanValue
        inspection_result_has_mean TYPE c LENGTH 1,
        "! InspectionResultMaximumValue
        inspection_result_maximum  TYPE /iwbep/v4_float,
        "! InspResultFrmtdMaximumValue
        insp_result_frmtd_maximum  TYPE c LENGTH 22,
        "! InspResultHasMaximumValue
        insp_result_has_maximum_va TYPE c LENGTH 1,
        "! InspectionResultMinimumValue
        inspection_result_minimum  TYPE /iwbep/v4_float,
        "! InspResultFrmtdMinimumValue
        insp_result_frmtd_minimum  TYPE c LENGTH 22,
        "! InspResultHasMinimumValue
        insp_result_has_minimum_va TYPE c LENGTH 1,
        "! InspectionResultOriginalValue
        inspection_result_original TYPE c LENGTH 25,
        "! InspResultValidValuesNumber
        insp_result_valid_values_n TYPE int4,
        "! InspectionResultText
        inspection_result_text     TYPE c LENGTH 40,
        "! InspectionResultHasLongText
        inspection_result_has_long TYPE c LENGTH 1,
        "! CharacteristicAttributeCatalog
        characteristic_attribute_c TYPE c LENGTH 1,
        "! CharacteristicAttributeCodeGrp
        characteristic_attribute_2 TYPE c LENGTH 8,
        "! CharacteristicAttributeCode
        characteristic_attribute_3 TYPE c LENGTH 4,
        "! InspRsltFreeDefinedTestEquip
        insp_rslt_free_defined_tes TYPE c LENGTH 18,
        "! InspRsltBelowToleranceValsNmbr
        insp_rslt_below_tolerance  TYPE int4,
        "! InspRsltAboveToleranceValsNmbr
        insp_rslt_above_tolerance  TYPE int4,
        "! InspRsltNonconformingValsNmbr
        insp_rslt_nonconforming_va TYPE int4,
        "! InspectionNumberOfDefects
        inspection_number_of_defec TYPE int4,
        "! DefectClass
        defect_class               TYPE c LENGTH 2,
        "! InspRsltAboveToleranceFraction
        insp_rslt_above_toleranc_2 TYPE /iwbep/v4_float,
        "! InspRsltFrmtdAbvTolFraction
        insp_rslt_frmtd_abv_tol_fr TYPE c LENGTH 22,
        "! InspRsltBelowToleranceFraction
        insp_rslt_below_toleranc_2 TYPE /iwbep/v4_float,
        "! InspRsltFrmtdBelowTolFraction
        insp_rslt_frmtd_below_tol  TYPE c LENGTH 22,
        "! InspResultVariance
        insp_result_variance       TYPE /iwbep/v4_float,
        "! InspResultFrmtdVariance
        insp_result_frmtd_variance TYPE c LENGTH 22,
        "! InspectionResultCatalog2
        inspection_result_catalog  TYPE c LENGTH 1,
        "! InspectionResultCatalog3
        inspection_result_catalo_2 TYPE c LENGTH 1,
        "! InspectionResultCatalog4
        inspection_result_catalo_3 TYPE c LENGTH 1,
        "! InspectionResultCatalog5
        inspection_result_catalo_4 TYPE c LENGTH 1,
        "! InspectionResultCode2
        inspection_result_code_2   TYPE c LENGTH 4,
        "! InspectionResultCode3
        inspection_result_code_3   TYPE c LENGTH 4,
        "! InspectionResultCode4
        inspection_result_code_4   TYPE c LENGTH 4,
        "! InspectionResultCode5
        inspection_result_code_5   TYPE c LENGTH 4,
        "! InspectionResultCodeGroup2
        inspection_result_code_gro TYPE c LENGTH 8,
        "! InspectionResultCodeGroup3
        inspection_result_code_g_2 TYPE c LENGTH 8,
        "! InspectionResultCodeGroup4
        inspection_result_code_g_3 TYPE c LENGTH 8,
        "! InspectionResultCodeGroup5
        inspection_result_code_g_4 TYPE c LENGTH 8,
        "! InspectionPartialSampleSize
        inspection_partial_sample  TYPE int2,
        "! InspectionStartDate
        inspection_start_date      TYPE datn,
        "! InspectionStartTime
        inspection_start_time      TYPE timn,
        "! InspectionEndDate
        inspection_end_date        TYPE datn,
        "! InspectionEndTime
        inspection_end_time        TYPE timn,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! CreationDate
        creation_date              TYPE datn,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! LastChangeDate
        last_change_date           TYPE datn,
        "! ChangedDateTime
        changed_date_time          TYPE timestamp,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_a_inspection_result_type,
      "! <p class="shorttext synchronized">List of A_InspectionResultType</p>
      tyt_a_inspection_result_type TYPE STANDARD TABLE OF tys_a_inspection_result_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_InspectionResultValueType</p>
      BEGIN OF tys_a_inspection_result_valu_2,
        "! <em>Key property</em> InspectionLot
        inspection_lot             TYPE c LENGTH 12,
        "! <em>Key property</em> InspPlanOperationInternalID
        insp_plan_operation_intern TYPE c LENGTH 8,
        "! <em>Key property</em> InspectionCharacteristic
        inspection_characteristic  TYPE c LENGTH 4,
        "! <em>Key property</em> InspResultValueInternalID
        insp_result_value_internal TYPE c LENGTH 8,
        "! InspectionResultAttribute
        inspection_result_attribut TYPE c LENGTH 1,
        "! InspResultItemInternalID
        insp_result_item_internal  TYPE c LENGTH 4,
        "! InspectionSubsetInternalID
        inspection_subset_internal TYPE c LENGTH 6,
        "! InspectionResultMeasuredValue
        inspection_result_measured TYPE /iwbep/v4_float,
        "! InspResultFrmtdMeasuredValue
        insp_result_frmtd_measured TYPE c LENGTH 22,
        "! InspResultHasMeasuredValue
        insp_result_has_measured_v TYPE c LENGTH 1,
        "! InspectionResultOriginalValue
        inspection_result_original TYPE c LENGTH 25,
        "! InspectionNumberOfDefects
        inspection_number_of_defec TYPE int1,
        "! DefectClass
        defect_class               TYPE c LENGTH 2,
        "! InspectionResultText
        inspection_result_text     TYPE c LENGTH 40,
        "! InspLotSingleUnitNumber
        insp_lot_single_unit_numbe TYPE c LENGTH 4,
        "! InspectionResultItem
        inspection_result_item     TYPE c LENGTH 18,
        "! InspRsltFreeDefinedTestEquip
        insp_rslt_free_defined_tes TYPE c LENGTH 18,
        "! InspectionValuationResult
        inspection_valuation_resul TYPE c LENGTH 1,
        "! CharacteristicAttributeCodeGrp
        characteristic_attribute_c TYPE c LENGTH 8,
        "! InspectionResultCodeGroup2
        inspection_result_code_gro TYPE c LENGTH 8,
        "! InspectionResultCodeGroup3
        inspection_result_code_g_2 TYPE c LENGTH 8,
        "! InspectionResultCodeGroup4
        inspection_result_code_g_3 TYPE c LENGTH 8,
        "! InspectionResultCodeGroup5
        inspection_result_code_g_4 TYPE c LENGTH 8,
        "! CharacteristicAttributeCode
        characteristic_attribute_2 TYPE c LENGTH 4,
        "! InspectionResultCode2
        inspection_result_code_2   TYPE c LENGTH 4,
        "! InspectionResultCode3
        inspection_result_code_3   TYPE c LENGTH 4,
        "! InspectionResultCode4
        inspection_result_code_4   TYPE c LENGTH 4,
        "! InspectionResultCode5
        inspection_result_code_5   TYPE c LENGTH 4,
        "! CharacteristicAttributeCatalog
        characteristic_attribute_3 TYPE c LENGTH 1,
        "! InspectionResultCatalog2
        inspection_result_catalog  TYPE c LENGTH 1,
        "! InspectionResultCatalog3
        inspection_result_catalo_2 TYPE c LENGTH 1,
        "! InspectionResultCatalog4
        inspection_result_catalo_3 TYPE c LENGTH 1,
        "! InspectionResultCatalog5
        inspection_result_catalo_4 TYPE c LENGTH 1,
        "! Inspector
        inspector                  TYPE c LENGTH 12,
        "! InspectionStartDate
        inspection_start_date      TYPE datn,
        "! InspectionStartTime
        inspection_start_time      TYPE timn,
        "! InspectionEndDate
        inspection_end_date        TYPE datn,
        "! InspectionEndTime
        inspection_end_time        TYPE timn,
        "! CreationDate
        creation_date              TYPE datn,
        "! CreationTime
        creation_time              TYPE timn,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! LastChangeDate
        last_change_date           TYPE datn,
        "! ChangedTime
        changed_time               TYPE timn,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! ChangedDateTime
        changed_date_time          TYPE timestamp,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_a_inspection_result_valu_2,
      "! <p class="shorttext synchronized">List of A_InspectionResultValueType</p>
      tyt_a_inspection_result_valu_2 TYPE STANDARD TABLE OF tys_a_inspection_result_valu_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_InspectionSubsetType</p>
      BEGIN OF tys_a_inspection_subset_type,
        "! Trigger_valuation_ac
        trigger_valuation_ac       TYPE abap_bool,
        "! <em>Key property</em> InspectionLot
        inspection_lot             TYPE c LENGTH 12,
        "! <em>Key property</em> InspPlanOperationInternalID
        insp_plan_operation_intern TYPE c LENGTH 8,
        "! <em>Key property</em> InspectionSubsetInternalID
        inspection_subset_internal TYPE c LENGTH 6,
        "! MaterialSample
        material_sample            TYPE c LENGTH 12,
        "! Equipment
        equipment                  TYPE c LENGTH 18,
        "! FunctionalLocation
        functional_location        TYPE c LENGTH 40,
        "! ShopFloorItem
        shop_floor_item            TYPE int8,
        "! SelectedCodeSetPlant
        selected_code_set_plant    TYPE c LENGTH 4,
        "! SelectedCodeSet
        selected_code_set          TYPE c LENGTH 8,
        "! InspSubsetUsageDcsnCodeGroup
        insp_subset_usage_dcsn_cod TYPE c LENGTH 8,
        "! InspSubsetUsageDcsnCode
        insp_subset_usage_dcsn_c_2 TYPE c LENGTH 4,
        "! InspSubsetUsageDcsnValuation
        insp_subset_usage_dcsn_val TYPE c LENGTH 1,
        "! InspectionSubsetTime
        inspection_subset_time     TYPE timn,
        "! InspectionSubsetDate
        inspection_subset_date     TYPE datn,
        "! InspSubsetLongNumericKey
        insp_subset_long_numeric_k TYPE c LENGTH 10,
        "! InspSubsetShortNumericKey
        insp_subset_short_numeric  TYPE c LENGTH 3,
        "! InspectionSubsetLongCharKey
        inspection_subset_long_cha TYPE c LENGTH 18,
        "! InspectionSubsetShortCharKey
        inspection_subset_short_ch TYPE c LENGTH 10,
        "! InspectionPartialLot
        inspection_partial_lot     TYPE c LENGTH 6,
        "! Inspector
        inspector                  TYPE c LENGTH 12,
        "! InspectionSubsetYieldQty
        inspection_subset_yield_qt TYPE p LENGTH 7 DECIMALS 3,
        "! InspectionSubsetScrapQty
        inspection_subset_scrap_qt TYPE p LENGTH 7 DECIMALS 3,
        "! InspectionSubsetReworkQty
        inspection_subset_rework_q TYPE p LENGTH 7 DECIMALS 3,
        "! InspectionSubsetQtyUnit
        inspection_subset_qty_unit TYPE c LENGTH 3,
        "! InspSbstFuncnlLocProperty
        insp_sbst_funcnl_loc_prope TYPE c LENGTH 1,
        "! InspSbstEquipProperty
        insp_sbst_equip_property   TYPE c LENGTH 1,
        "! InspSbstMatlSmplProperty
        insp_sbst_matl_smpl_proper TYPE c LENGTH 1,
        "! InspectionSubsetSortKey
        inspection_subset_sort_key TYPE c LENGTH 70,
        "! InspSbstDateFldProperty
        insp_sbst_date_fld_propert TYPE c LENGTH 1,
        "! InspSbstLongNmbrFldProperty
        insp_sbst_long_nmbr_fld_pr TYPE c LENGTH 1,
        "! InspSbstShrtNmbrFldProperty
        insp_sbst_shrt_nmbr_fld_pr TYPE c LENGTH 1,
        "! InspSbstLongTxtFldProperty
        insp_sbst_long_txt_fld_pro TYPE c LENGTH 1,
        "! InspSbstTimeFldProperty
        insp_sbst_time_fld_propert TYPE c LENGTH 1,
        "! InspSbstShrtTxtFldProperty
        insp_sbst_shrt_txt_fld_pro TYPE c LENGTH 1,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! CreationDate
        creation_date              TYPE datn,
        "! CreationTime
        creation_time              TYPE timn,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! LastChangeDate
        last_change_date           TYPE datn,
        "! LastChangeTime
        last_change_time           TYPE timn,
        "! ChangedDateTime
        changed_date_time          TYPE timestamp,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_a_inspection_subset_type,
      "! <p class="shorttext synchronized">List of A_InspectionSubsetType</p>
      tyt_a_inspection_subset_type TYPE STANDARD TABLE OF tys_a_inspection_subset_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_InspLotMatlDocItemType</p>
      BEGIN OF tys_a_insp_lot_matl_doc_item_t,
        "! <em>Key property</em> InspectionLot
        inspection_lot             TYPE c LENGTH 12,
        "! <em>Key property</em> InspLotMatlDocItem
        insp_lot_matl_doc_item     TYPE c LENGTH 6,
        "! InspLotQtyPosted
        insp_lot_qty_posted        TYPE p LENGTH 7 DECIMALS 3,
        "! InspLotMatlDocItmQtyUnit
        insp_lot_matl_doc_itm_qty  TYPE c LENGTH 3,
        "! UsageDecisionStockType
        usage_decision_stock_type  TYPE c LENGTH 10,
        "! StorageLocation
        storage_location           TYPE c LENGTH 4,
        "! InspLotMaterialPostedTo
        insp_lot_material_posted_t TYPE c LENGTH 40,
        "! InspLotBatchTransferredTo
        insp_lot_batch_transferred TYPE c LENGTH 10,
        "! MaterialDocumentItemText
        material_document_item_tex TYPE c LENGTH 50,
        "! InspLotMatlDocItemType
        insp_lot_matl_doc_item_typ TYPE c LENGTH 1,
        "! MaterialDocument
        material_document          TYPE c LENGTH 10,
        "! MaterialDocumentYear
        material_document_year     TYPE c LENGTH 4,
        "! MaterialDocumentItem
        material_document_item     TYPE c LENGTH 4,
        "! CreationDate
        creation_date              TYPE datn,
        "! ChangedDateTime
        changed_date_time          TYPE timestamp,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_a_insp_lot_matl_doc_item_t,
      "! <p class="shorttext synchronized">List of A_InspLotMatlDocItemType</p>
      tyt_a_insp_lot_matl_doc_item_t TYPE STANDARD TABLE OF tys_a_insp_lot_matl_doc_item_t WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_InspLotMatlDocItmSrlNmbrType</p>
      BEGIN OF tys_a_insp_lot_matl_doc_itm__2,
        "! <em>Key property</em> InspectionLot
        inspection_lot             TYPE c LENGTH 12,
        "! <em>Key property</em> InspLotMatlDocItem
        insp_lot_matl_doc_item     TYPE c LENGTH 6,
        "! <em>Key property</em> Equipment
        equipment                  TYPE c LENGTH 18,
        "! SerialNumber
        serial_number              TYPE c LENGTH 18,
        "! InspLotMatlDocItemType
        insp_lot_matl_doc_item_typ TYPE c LENGTH 1,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_a_insp_lot_matl_doc_itm__2,
      "! <p class="shorttext synchronized">List of A_InspLotMatlDocItmSrlNmbrType</p>
      tyt_a_insp_lot_matl_doc_itm__2 TYPE STANDARD TABLE OF tys_a_insp_lot_matl_doc_itm__2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_InspLotSerialNumberType</p>
      BEGIN OF tys_a_insp_lot_serial_number_t,
        "! <em>Key property</em> InspectionLot
        inspection_lot TYPE c LENGTH 12,
        "! <em>Key property</em> SerialNumber
        serial_number  TYPE c LENGTH 18,
        "! odata.etag
        etag           TYPE string,
      END OF tys_a_insp_lot_serial_number_t,
      "! <p class="shorttext synchronized">List of A_InspLotSerialNumberType</p>
      tyt_a_insp_lot_serial_number_t TYPE STANDARD TABLE OF tys_a_insp_lot_serial_number_t WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_InspLotUsageDecisionType</p>
      BEGIN OF tys_a_insp_lot_usage_decisio_2,
        "! <em>Key property</em> InspectionLot
        inspection_lot             TYPE c LENGTH 12,
        "! InspLotUsageDecisionLevel
        insp_lot_usage_decision_le TYPE c LENGTH 1,
        "! InspectionLotQualityScore
        inspection_lot_quality_sco TYPE p LENGTH 2 DECIMALS 0,
        "! InspLotUsageDecisionCatalog
        insp_lot_usage_decision_ca TYPE c LENGTH 1,
        "! SelectedCodeSetPlant
        selected_code_set_plant    TYPE c LENGTH 4,
        "! InspLotUsgeDcsnSelectedSet
        insp_lot_usge_dcsn_selecte TYPE c LENGTH 8,
        "! InspLotUsageDecisionCodeGroup
        insp_lot_usage_decision_co TYPE c LENGTH 8,
        "! InspectionLotUsageDecisionCode
        inspection_lot_usage_decis TYPE c LENGTH 4,
        "! InspLotUsgeDcsnDynValuation
        insp_lot_usge_dcsn_dyn_val TYPE c LENGTH 1,
        "! InspLotUsageDecisionValuation
        insp_lot_usage_decision_va TYPE c LENGTH 1,
        "! InspLotUsgeDcsnFollowUpAction
        insp_lot_usge_dcsn_follow  TYPE c LENGTH 8,
        "! InspectionLotUsageDecidedBy
        inspection_lot_usage_decid TYPE c LENGTH 12,
        "! InspectionLotUsageDecidedOn
        inspection_lot_usage_dec_2 TYPE datn,
        "! InspLotUsageDecisionTime
        insp_lot_usage_decision_ti TYPE timn,
        "! InspLotUsageDecisionChangedBy
        insp_lot_usage_decision_ch TYPE c LENGTH 12,
        "! InspLotUsageDecisionChangedOn
        insp_lot_usage_decision__2 TYPE datn,
        "! InspLotUsgeDcsnChangedTime
        insp_lot_usge_dcsn_changed TYPE timn,
        "! InspLotUsgeDcsnHasLongText
        insp_lot_usge_dcsn_has_lon TYPE abap_bool,
        "! ChangedDateTime
        changed_date_time          TYPE timestamp,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_a_insp_lot_usage_decisio_2,
      "! <p class="shorttext synchronized">List of A_InspLotUsageDecisionType</p>
      tyt_a_insp_lot_usage_decisio_2 TYPE STANDARD TABLE OF tys_a_insp_lot_usage_decisio_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_InspSampleCharacteristicType</p>
      BEGIN OF tys_a_insp_sample_characteri_2,
        "! <em>Key property</em> InspectionLot
        inspection_lot             TYPE c LENGTH 12,
        "! <em>Key property</em> InspPlanOperationInternalID
        insp_plan_operation_intern TYPE c LENGTH 8,
        "! <em>Key property</em> InspectionCharacteristic
        inspection_characteristic  TYPE c LENGTH 4,
        "! <em>Key property</em> InspectionSubsetInternalID
        inspection_subset_internal TYPE c LENGTH 6,
        "! InspectionCharacteristicStatus
        inspection_characteristi_2 TYPE c LENGTH 1,
        "! QualityControlChart
        quality_control_chart      TYPE c LENGTH 12,
        "! InspSampleAcceptanceNumber
        insp_sample_acceptance_num TYPE int2,
        "! InspSampleRejectionNumber
        insp_sample_rejection_numb TYPE int2,
        "! InspSampleValuationRule
        insp_sample_valuation_rule TYPE c LENGTH 2,
        "! InspectionSampleSize
        inspection_sample_size     TYPE int4,
        "! InspLotDynRuleStage
        insp_lot_dyn_rule_stage    TYPE c LENGTH 4,
        "! InspectionSeverity
        inspection_severity        TYPE c LENGTH 3,
        "! InspSubsetCharcCreationDate
        insp_subset_charc_creation TYPE datn,
        "! ChangedDateTime
        changed_date_time          TYPE timestamp,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_a_insp_sample_characteri_2,
      "! <p class="shorttext synchronized">List of A_InspSampleCharacteristicType</p>
      tyt_a_insp_sample_characteri_2 TYPE STANDARD TABLE OF tys_a_insp_sample_characteri_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_InspSampleResultType</p>
      BEGIN OF tys_a_insp_sample_result_type,
        "! <em>Key property</em> InspectionLot
        inspection_lot             TYPE c LENGTH 12,
        "! <em>Key property</em> InspPlanOperationInternalID
        insp_plan_operation_intern TYPE c LENGTH 8,
        "! <em>Key property</em> InspectionCharacteristic
        inspection_characteristic  TYPE c LENGTH 4,
        "! <em>Key property</em> InspectionSubsetInternalID
        inspection_subset_internal TYPE c LENGTH 6,
        "! Inspector
        inspector                  TYPE c LENGTH 12,
        "! InspectionResultStatus
        inspection_result_status   TYPE c LENGTH 1,
        "! InspectionResultOrigin
        inspection_result_origin   TYPE c LENGTH 2,
        "! InspectionStartDate
        inspection_start_date      TYPE datn,
        "! InspectionStartTime
        inspection_start_time      TYPE timn,
        "! InspectionEndDate
        inspection_end_date        TYPE datn,
        "! InspectionEndTime
        inspection_end_time        TYPE timn,
        "! InspectionResultAttribute
        inspection_result_attribut TYPE c LENGTH 1,
        "! InspectionValuationResult
        inspection_valuation_resul TYPE c LENGTH 1,
        "! InspResultFrmtdMeanValue
        insp_result_frmtd_mean_val TYPE c LENGTH 22,
        "! InspectionResultHasMeanValue
        inspection_result_has_mean TYPE c LENGTH 1,
        "! InspResultFrmtdMaximumValue
        insp_result_frmtd_maximum  TYPE c LENGTH 22,
        "! InspResultHasMaximumValue
        insp_result_has_maximum_va TYPE c LENGTH 1,
        "! InspResultFrmtdMinimumValue
        insp_result_frmtd_minimum  TYPE c LENGTH 22,
        "! InspResultHasMinimumValue
        insp_result_has_minimum_va TYPE c LENGTH 1,
        "! InspectionResultOriginalValue
        inspection_result_original TYPE c LENGTH 25,
        "! InspResultValidValuesNumber
        insp_result_valid_values_n TYPE int2,
        "! InspResultNmbrOfRecordedRslts
        insp_result_nmbr_of_record TYPE int4,
        "! InspectionResultText
        inspection_result_text     TYPE c LENGTH 40,
        "! InspectionResultHasLongText
        inspection_result_has_long TYPE c LENGTH 1,
        "! Language
        language                   TYPE c LENGTH 2,
        "! InspRsltFreeDefinedTestEquip
        insp_rslt_free_defined_tes TYPE c LENGTH 18,
        "! InspRsltBelowToleranceValsNmbr
        insp_rslt_below_tolerance  TYPE int2,
        "! InspRsltAboveToleranceValsNmbr
        insp_rslt_above_tolerance  TYPE int2,
        "! InspRsltFrmtdAbvTolFraction
        insp_rslt_frmtd_abv_tol_fr TYPE c LENGTH 22,
        "! InspRsltFrmtdBelowTolFraction
        insp_rslt_frmtd_below_tol  TYPE c LENGTH 22,
        "! InspResultFrmtdVariance
        insp_result_frmtd_variance TYPE c LENGTH 22,
        "! InspRsltNonconformingValsNmbr
        insp_rslt_nonconforming_va TYPE int2,
        "! InspectionNumberOfDefects
        inspection_number_of_defec TYPE int2,
        "! CharacteristicAttributeCodeGrp
        characteristic_attribute_c TYPE c LENGTH 8,
        "! InspectionResultCodeGroup2
        inspection_result_code_gro TYPE c LENGTH 8,
        "! InspectionResultCodeGroup3
        inspection_result_code_g_2 TYPE c LENGTH 8,
        "! InspectionResultCodeGroup4
        inspection_result_code_g_3 TYPE c LENGTH 8,
        "! InspectionResultCodeGroup5
        inspection_result_code_g_4 TYPE c LENGTH 8,
        "! CharacteristicAttributeCode
        characteristic_attribute_2 TYPE c LENGTH 4,
        "! InspectionResultCode2
        inspection_result_code_2   TYPE c LENGTH 4,
        "! InspectionResultCode3
        inspection_result_code_3   TYPE c LENGTH 4,
        "! InspectionResultCode4
        inspection_result_code_4   TYPE c LENGTH 4,
        "! InspectionResultCode5
        inspection_result_code_5   TYPE c LENGTH 4,
        "! CharacteristicAttributeCatalog
        characteristic_attribute_3 TYPE c LENGTH 1,
        "! InspectionResultCatalog2
        inspection_result_catalog  TYPE c LENGTH 1,
        "! InspectionResultCatalog3
        inspection_result_catalo_2 TYPE c LENGTH 1,
        "! InspectionResultCatalog4
        inspection_result_catalo_3 TYPE c LENGTH 1,
        "! InspectionResultCatalog5
        inspection_result_catalo_4 TYPE c LENGTH 1,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! CreationDate
        creation_date              TYPE datn,
        "! CreationTime
        creation_time              TYPE timn,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! LastChangeDate
        last_change_date           TYPE datn,
        "! ChangedDateTime
        changed_date_time          TYPE timestamp,
        "! ChangedTime
        changed_time               TYPE timn,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_a_insp_sample_result_type,
      "! <p class="shorttext synchronized">List of A_InspSampleResultType</p>
      tyt_a_insp_sample_result_type TYPE STANDARD TABLE OF tys_a_insp_sample_result_type WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! A_InspectionCharacteristic
        "! <br/> Collection of type 'A_InspectionCharacteristicType'
        a_inspection_characteristi TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_INSPECTION_CHARACTERISTI',
        "! A_InspectionLot
        "! <br/> Collection of type 'A_InspectionLotType'
        a_inspection_lot           TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_INSPECTION_LOT',
        "! A_InspectionLotWithStatus
        "! <br/> Collection of type 'A_InspectionLotWithStatusType'
        a_inspection_lot_with_stat TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_INSPECTION_LOT_WITH_STAT',
        "! A_InspectionOperation
        "! <br/> Collection of type 'A_InspectionOperationType'
        a_inspection_operation     TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_INSPECTION_OPERATION',
        "! A_InspectionResult
        "! <br/> Collection of type 'A_InspectionResultType'
        a_inspection_result        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_INSPECTION_RESULT',
        "! A_InspectionResultValue
        "! <br/> Collection of type 'A_InspectionResultValueType'
        a_inspection_result_value  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_INSPECTION_RESULT_VALUE',
        "! A_InspectionSubset
        "! <br/> Collection of type 'A_InspectionSubsetType'
        a_inspection_subset        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_INSPECTION_SUBSET',
        "! A_InspLotMatlDocItem
        "! <br/> Collection of type 'A_InspLotMatlDocItemType'
        a_insp_lot_matl_doc_item   TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_INSP_LOT_MATL_DOC_ITEM',
        "! A_InspLotMatlDocItmSrlNmbr
        "! <br/> Collection of type 'A_InspLotMatlDocItmSrlNmbrType'
        a_insp_lot_matl_doc_itm_sr TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_INSP_LOT_MATL_DOC_ITM_SR',
        "! A_InspLotSerialNumber
        "! <br/> Collection of type 'A_InspLotSerialNumberType'
        a_insp_lot_serial_number   TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_INSP_LOT_SERIAL_NUMBER',
        "! A_InspLotUsageDecision
        "! <br/> Collection of type 'A_InspLotUsageDecisionType'
        a_insp_lot_usage_decision  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_INSP_LOT_USAGE_DECISION',
        "! A_InspSampleCharacteristic
        "! <br/> Collection of type 'A_InspSampleCharacteristicType'
        a_insp_sample_characterist TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_INSP_SAMPLE_CHARACTERIST',
        "! A_InspSampleResult
        "! <br/> Collection of type 'A_InspSampleResultType'
        a_insp_sample_result       TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_INSP_SAMPLE_RESULT',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the function imports</p>
      BEGIN OF gcs_function_import,
        "! A_InspectionSubsetTrigger_valuation
        "! <br/> See structure type {@link ..tys_parameters_1} for the parameters
        a_inspection_subset_trigge TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'A_INSPECTION_SUBSET_TRIGGE',
      END OF gcs_function_import.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the bound functions</p>
      BEGIN OF gcs_bound_function,
         "! Dummy field - Structure must not be empty
         dummy TYPE int1 VALUE 0,
      END OF gcs_bound_function.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for complex types</p>
      BEGIN OF gcs_complex_type,
         "! Dummy field - Structure must not be empty
         dummy TYPE int1 VALUE 0,
      END OF gcs_complex_type.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for A_InspectionCharacteristicType</p>
        "! See also structure type {@link ..tys_a_inspection_characteris_2}
        BEGIN OF a_inspection_characteris_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_InspResultValue
            to_insp_result_value TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_INSP_RESULT_VALUE',
            "! to_InspSmplResult
            to_insp_smpl_result  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_INSP_SMPL_RESULT',
          END OF navigation,
        END OF a_inspection_characteris_2,
        "! <p class="shorttext synchronized">Internal names for A_InspectionLotType</p>
        "! See also structure type {@link ..tys_a_inspection_lot_type}
        BEGIN OF a_inspection_lot_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_InspectionLotWithStatus
            to_inspection_lot_with_sta TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_INSPECTION_LOT_WITH_STA',
          END OF navigation,
        END OF a_inspection_lot_type,
        "! <p class="shorttext synchronized">Internal names for A_InspectionLotWithStatusType</p>
        "! See also structure type {@link ..tys_a_inspection_lot_with_st_2}
        BEGIN OF a_inspection_lot_with_st_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_inspection_lot_with_st_2,
        "! <p class="shorttext synchronized">Internal names for A_InspectionOperationType</p>
        "! See also structure type {@link ..tys_a_inspection_operation_typ}
        BEGIN OF a_inspection_operation_typ,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_inspection_operation_typ,
        "! <p class="shorttext synchronized">Internal names for A_InspectionResultType</p>
        "! See also structure type {@link ..tys_a_inspection_result_type}
        BEGIN OF a_inspection_result_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_inspection_result_type,
        "! <p class="shorttext synchronized">Internal names for A_InspectionResultValueType</p>
        "! See also structure type {@link ..tys_a_inspection_result_valu_2}
        BEGIN OF a_inspection_result_valu_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_inspection_result_valu_2,
        "! <p class="shorttext synchronized">Internal names for A_InspectionSubsetType</p>
        "! See also structure type {@link ..tys_a_inspection_subset_type}
        BEGIN OF a_inspection_subset_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_inspection_subset_type,
        "! <p class="shorttext synchronized">Internal names for A_InspLotMatlDocItemType</p>
        "! See also structure type {@link ..tys_a_insp_lot_matl_doc_item_t}
        BEGIN OF a_insp_lot_matl_doc_item_t,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_InspLotMatlDocItmSrlNmbr
            to_insp_lot_matl_doc_itm_s TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_INSP_LOT_MATL_DOC_ITM_S',
          END OF navigation,
        END OF a_insp_lot_matl_doc_item_t,
        "! <p class="shorttext synchronized">Internal names for A_InspLotMatlDocItmSrlNmbrType</p>
        "! See also structure type {@link ..tys_a_insp_lot_matl_doc_itm__2}
        BEGIN OF a_insp_lot_matl_doc_itm__2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_insp_lot_matl_doc_itm__2,
        "! <p class="shorttext synchronized">Internal names for A_InspLotSerialNumberType</p>
        "! See also structure type {@link ..tys_a_insp_lot_serial_number_t}
        BEGIN OF a_insp_lot_serial_number_t,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_insp_lot_serial_number_t,
        "! <p class="shorttext synchronized">Internal names for A_InspLotUsageDecisionType</p>
        "! See also structure type {@link ..tys_a_insp_lot_usage_decisio_2}
        BEGIN OF a_insp_lot_usage_decisio_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_insp_lot_usage_decisio_2,
        "! <p class="shorttext synchronized">Internal names for A_InspSampleCharacteristicType</p>
        "! See also structure type {@link ..tys_a_insp_sample_characteri_2}
        BEGIN OF a_insp_sample_characteri_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_insp_sample_characteri_2,
        "! <p class="shorttext synchronized">Internal names for A_InspSampleResultType</p>
        "! See also structure type {@link ..tys_a_insp_sample_result_type}
        BEGIN OF a_insp_sample_result_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_insp_sample_result_type,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.

