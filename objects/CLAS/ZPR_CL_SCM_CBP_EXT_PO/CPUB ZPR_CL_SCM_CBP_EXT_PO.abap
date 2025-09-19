"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>API_PURCHASEORDER_PROCESS_SRV</em>
CLASS zpr_cl_scm_cbp_ext_po DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">Types for "OData Primitive Types"</p>
      BEGIN OF tys_types_for_prim_types,
        "! Used for primitive type PURCHASE_ORDER
        purchase_order   TYPE c LENGTH 10,
        "! Used for primitive type PURCHASE_ORDER_2
        purchase_order_2 TYPE string,
      END OF tys_types_for_prim_types.

    TYPES:
      "! <p class="shorttext synchronized">DummyFunctionImportResult</p>
      BEGIN OF tys_dummy_function_import_resu,
        "! IsInvalid
        is_invalid TYPE abap_bool,
      END OF tys_dummy_function_import_resu,
      "! <p class="shorttext synchronized">List of DummyFunctionImportResult</p>
      tyt_dummy_function_import_resu TYPE STANDARD TABLE OF tys_dummy_function_import_resu WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">GetPDFResult</p>
      BEGIN OF tys_get_pdfresult,
        "! PurchaseOrderBinary
        purchase_order_binary TYPE string,
      END OF tys_get_pdfresult,
      "! <p class="shorttext synchronized">List of GetPDFResult</p>
      tyt_get_pdfresult TYPE STANDARD TABLE OF tys_get_pdfresult WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function GetOutputBinaryData</p>
      "! <em>with the internal name</em> GET_OUTPUT_BINARY_DATA
      BEGIN OF tys_parameters_1,
        "! PurchaseOrder
        purchase_order TYPE c LENGTH 10,
      END OF tys_parameters_1,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_1</p>
      tyt_parameters_1 TYPE STANDARD TABLE OF tys_parameters_1 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function GetPDF</p>
      "! <em>with the internal name</em> GET_PDF
      BEGIN OF tys_parameters_2,
        "! PurchaseOrder
        purchase_order TYPE string,
      END OF tys_parameters_2,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_2</p>
      tyt_parameters_2 TYPE STANDARD TABLE OF tys_parameters_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_POSubcontractingComponentType</p>
      BEGIN OF tys_a_posubcontracting_compo_2,
        "! <em>Key property</em> PurchaseOrder
        purchase_order         TYPE c LENGTH 10,
        "! <em>Key property</em> PurchaseOrderItem
        purchase_order_item    TYPE c LENGTH 5,
        "! <em>Key property</em> ScheduleLine
        schedule_line          TYPE c LENGTH 4,
        "! <em>Key property</em> ReservationItem
        reservation_item       TYPE c LENGTH 4,
        "! <em>Key property</em> RecordType
        record_type            TYPE c LENGTH 1,
        "! Material
        material               TYPE c LENGTH 40,
        "! BOMItemDescription
        bomitem_description    TYPE c LENGTH 40,
        "! RequiredQuantity
        required_quantity      TYPE p LENGTH 7 DECIMALS 3,
        "! BaseUnit
        base_unit              TYPE c LENGTH 3,
        "! RequirementDate
        requirement_date       TYPE datn,
        "! QuantityInEntryUnit
        quantity_in_entry_unit TYPE p LENGTH 7 DECIMALS 3,
        "! EntryUnit
        entry_unit             TYPE c LENGTH 3,
        "! WithdrawnQuantity
        withdrawn_quantity     TYPE p LENGTH 7 DECIMALS 3,
        "! Plant
        plant                  TYPE c LENGTH 4,
        "! Batch
        batch                  TYPE c LENGTH 10,
        "! odata.etag
        etag                   TYPE string,
      END OF tys_a_posubcontracting_compo_2,
      "! <p class="shorttext synchronized">List of A_POSubcontractingComponentType</p>
      tyt_a_posubcontracting_compo_2 TYPE STANDARD TABLE OF tys_a_posubcontracting_compo_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_PurchaseOrderItemNoteType</p>
      BEGIN OF tys_a_purchase_order_item_no_2,
        "! <em>Key property</em> PurchaseOrder
        purchase_order      TYPE c LENGTH 10,
        "! <em>Key property</em> PurchaseOrderItem
        purchase_order_item TYPE c LENGTH 5,
        "! <em>Key property</em> TextObjectType
        text_object_type    TYPE c LENGTH 4,
        "! <em>Key property</em> Language
        language            TYPE c LENGTH 2,
        "! PlainLongText
        plain_long_text     TYPE string,
        "! odata.etag
        etag                TYPE string,
      END OF tys_a_purchase_order_item_no_2,
      "! <p class="shorttext synchronized">List of A_PurchaseOrderItemNoteType</p>
      tyt_a_purchase_order_item_no_2 TYPE STANDARD TABLE OF tys_a_purchase_order_item_no_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_PurchaseOrderItemType</p>
      BEGIN OF tys_a_purchase_order_item_type,
        "! <em>Key property</em> PurchaseOrder
        purchase_order             TYPE c LENGTH 10,
        "! <em>Key property</em> PurchaseOrderItem
        purchase_order_item        TYPE c LENGTH 5,
        "! PurchasingDocumentDeletionCode
        purchasing_document_deleti TYPE c LENGTH 1,
        "! PurchaseOrderItemText
        purchase_order_item_text   TYPE c LENGTH 40,
        "! Plant
        plant                      TYPE c LENGTH 4,
        "! StorageLocation
        storage_location           TYPE c LENGTH 4,
        "! MaterialGroup
        material_group             TYPE c LENGTH 9,
        "! PurchasingInfoRecord
        purchasing_info_record     TYPE c LENGTH 10,
        "! SupplierMaterialNumber
        supplier_material_number   TYPE c LENGTH 35,
        "! OrderQuantity
        order_quantity             TYPE p LENGTH 7 DECIMALS 3,
        "! PurchaseOrderQuantityUnit
        purchase_order_quantity_un TYPE c LENGTH 3,
        "! OrderPriceUnit
        order_price_unit           TYPE c LENGTH 3,
        "! OrderPriceUnitToOrderUnitNmrtr
        order_price_unit_to_order  TYPE p LENGTH 3 DECIMALS 0,
        "! OrdPriceUnitToOrderUnitDnmntr
        ord_price_unit_to_order_un TYPE p LENGTH 3 DECIMALS 0,
        "! DocumentCurrency
        document_currency          TYPE c LENGTH 5,
        "! NetPriceAmount
        net_price_amount           TYPE p LENGTH 7 DECIMALS 3,
        "! NetPriceQuantity
        net_price_quantity         TYPE p LENGTH 3 DECIMALS 0,
        "! TaxCode
        tax_code                   TYPE c LENGTH 2,
        "! ShippingInstruction
        shipping_instruction       TYPE c LENGTH 2,
        "! TaxDeterminationDate
        tax_determination_date     TYPE datn,
        "! TaxCountry
        tax_country                TYPE c LENGTH 3,
        "! PriceIsToBePrinted
        price_is_to_be_printed     TYPE abap_bool,
        "! OverdelivTolrtdLmtRatioInPct
        overdeliv_tolrtd_lmt_ratio TYPE p LENGTH 2 DECIMALS 1,
        "! UnlimitedOverdeliveryIsAllowed
        unlimited_overdelivery_is  TYPE abap_bool,
        "! UnderdelivTolrtdLmtRatioInPct
        underdeliv_tolrtd_lmt_rati TYPE p LENGTH 2 DECIMALS 1,
        "! ValuationType
        valuation_type             TYPE c LENGTH 10,
        "! IsCompletelyDelivered
        is_completely_delivered    TYPE abap_bool,
        "! IsFinallyInvoiced
        is_finally_invoiced        TYPE abap_bool,
        "! PurchaseOrderItemCategory
        purchase_order_item_catego TYPE c LENGTH 1,
        "! AccountAssignmentCategory
        account_assignment_categor TYPE c LENGTH 1,
        "! MultipleAcctAssgmtDistribution
        multiple_acct_assgmt_distr TYPE c LENGTH 1,
        "! PartialInvoiceDistribution
        partial_invoice_distributi TYPE c LENGTH 1,
        "! GoodsReceiptIsExpected
        goods_receipt_is_expected  TYPE abap_bool,
        "! GoodsReceiptIsNonValuated
        goods_receipt_is_non_valua TYPE abap_bool,
        "! InvoiceIsExpected
        invoice_is_expected        TYPE abap_bool,
        "! InvoiceIsGoodsReceiptBased
        invoice_is_goods_receipt_b TYPE abap_bool,
        "! PurchaseContract
        purchase_contract          TYPE c LENGTH 10,
        "! PurchaseContractItem
        purchase_contract_item     TYPE c LENGTH 5,
        "! Customer
        customer                   TYPE c LENGTH 10,
        "! Subcontractor
        subcontractor              TYPE c LENGTH 10,
        "! SupplierIsSubcontractor
        supplier_is_subcontractor  TYPE abap_bool,
        "! ItemNetWeight
        item_net_weight            TYPE p LENGTH 7 DECIMALS 3,
        "! ItemWeightUnit
        item_weight_unit           TYPE c LENGTH 3,
        "! TaxJurisdiction
        tax_jurisdiction           TYPE c LENGTH 15,
        "! PricingDateControl
        pricing_date_control       TYPE c LENGTH 1,
        "! ItemVolume
        item_volume                TYPE p LENGTH 7 DECIMALS 3,
        "! ItemVolumeUnit
        item_volume_unit           TYPE c LENGTH 3,
        "! SupplierConfirmationControlKey
        supplier_confirmation_cont TYPE c LENGTH 4,
        "! IncotermsClassification
        incoterms_classification   TYPE c LENGTH 3,
        "! IncotermsTransferLocation
        incoterms_transfer_locatio TYPE c LENGTH 28,
        "! EvaldRcptSettlmtIsAllowed
        evald_rcpt_settlmt_is_allo TYPE abap_bool,
        "! PurchaseRequisition
        purchase_requisition       TYPE c LENGTH 10,
        "! PurchaseRequisitionItem
        purchase_requisition_item  TYPE c LENGTH 5,
        "! IsReturnsItem
        is_returns_item            TYPE abap_bool,
        "! RequisitionerName
        requisitioner_name         TYPE c LENGTH 12,
        "! ServicePackage
        service_package            TYPE c LENGTH 10,
        "! EarmarkedFunds
        earmarked_funds            TYPE c LENGTH 10,
        "! EarmarkedFundsDocument
        earmarked_funds_document   TYPE c LENGTH 10,
        "! EarmarkedFundsItem
        earmarked_funds_item       TYPE c LENGTH 3,
        "! EarmarkedFundsDocumentItem
        earmarked_funds_document_i TYPE c LENGTH 3,
        "! IncotermsLocation1
        incoterms_location_1       TYPE c LENGTH 70,
        "! IncotermsLocation2
        incoterms_location_2       TYPE c LENGTH 70,
        "! Material
        material                   TYPE c LENGTH 40,
        "! InternationalArticleNumber
        international_article_numb TYPE c LENGTH 18,
        "! ManufacturerMaterial
        manufacturer_material      TYPE c LENGTH 40,
        "! ServicePerformer
        service_performer          TYPE c LENGTH 10,
        "! ProductType
        product_type               TYPE c LENGTH 2,
        "! ExpectedOverallLimitAmount
        expected_overall_limit_amo TYPE p LENGTH 8 DECIMALS 3,
        "! OverallLimitAmount
        overall_limit_amount       TYPE p LENGTH 8 DECIMALS 3,
        "! PurContractForOverallLimit
        pur_contract_for_overall_l TYPE c LENGTH 10,
        "! PurchasingParentItem
        purchasing_parent_item     TYPE c LENGTH 5,
        "! Batch
        batch                      TYPE c LENGTH 10,
        "! PurchasingItemIsFreeOfCharge
        purchasing_item_is_free_of TYPE abap_bool,
        "! ReferenceDeliveryAddressID
        reference_delivery_address TYPE c LENGTH 10,
        "! DeliveryAddressID
        delivery_address_id        TYPE c LENGTH 10,
        "! DeliveryAddressName
        delivery_address_name      TYPE c LENGTH 40,
        "! DeliveryAddressName2
        delivery_address_name_2    TYPE c LENGTH 40,
        "! DeliveryAddressFullName
        delivery_address_full_name TYPE c LENGTH 80,
        "! DeliveryAddressStreetName
        delivery_address_street_na TYPE c LENGTH 60,
        "! DeliveryAddressHouseNumber
        delivery_address_house_num TYPE c LENGTH 10,
        "! DeliveryAddressCityName
        delivery_address_city_name TYPE c LENGTH 40,
        "! DeliveryAddressPostalCode
        delivery_address_postal_co TYPE c LENGTH 10,
        "! DeliveryAddressRegion
        delivery_address_region    TYPE c LENGTH 3,
        "! DeliveryAddressCountry
        delivery_address_country   TYPE c LENGTH 3,
        "! DeliveryAddressDistrictName
        delivery_address_district  TYPE c LENGTH 40,
        "! DownPaymentType
        down_payment_type          TYPE c LENGTH 4,
        "! DownPaymentPercentageOfTotAmt
        down_payment_percentage_of TYPE p LENGTH 3 DECIMALS 2,
        "! DownPaymentAmount
        down_payment_amount        TYPE p LENGTH 7 DECIMALS 3,
        "! DownPaymentDueDate
        down_payment_due_date      TYPE datn,
        "! BR_MaterialUsage
        br_material_usage          TYPE c LENGTH 1,
        "! BR_MaterialOrigin
        br_material_origin         TYPE c LENGTH 1,
        "! BR_CFOPCategory
        br_cfopcategory            TYPE c LENGTH 2,
        "! BR_IsProducedInHouse
        br_is_produced_in_house    TYPE abap_bool,
        "! ConsumptionTaxCtrlCode
        consumption_tax_ctrl_code  TYPE c LENGTH 16,
        "! PurgProdCmplncSupplierStatus
        purg_prod_cmplnc_supplier  TYPE c LENGTH 1,
        "! PurgProductMarketabilityStatus
        purg_product_marketability TYPE c LENGTH 1,
        "! PurgSafetyDataSheetStatus
        purg_safety_data_sheet_sta TYPE c LENGTH 1,
        "! PurgProdCmplncDngrsGoodsStatus
        purg_prod_cmplnc_dngrs_goo TYPE c LENGTH 1,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_a_purchase_order_item_type,
      "! <p class="shorttext synchronized">List of A_PurchaseOrderItemType</p>
      tyt_a_purchase_order_item_type TYPE STANDARD TABLE OF tys_a_purchase_order_item_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_PurchaseOrderNoteType</p>
      BEGIN OF tys_a_purchase_order_note_type,
        "! <em>Key property</em> PurchaseOrder
        purchase_order   TYPE c LENGTH 10,
        "! <em>Key property</em> TextObjectType
        text_object_type TYPE c LENGTH 4,
        "! <em>Key property</em> Language
        language         TYPE c LENGTH 2,
        "! PlainLongText
        plain_long_text  TYPE string,
        "! odata.etag
        etag             TYPE string,
      END OF tys_a_purchase_order_note_type,
      "! <p class="shorttext synchronized">List of A_PurchaseOrderNoteType</p>
      tyt_a_purchase_order_note_type TYPE STANDARD TABLE OF tys_a_purchase_order_note_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_PurchaseOrderScheduleLineType</p>
      BEGIN OF tys_a_purchase_order_schedul_2,
        "! <em>Key property</em> PurchasingDocument
        purchasing_document        TYPE c LENGTH 10,
        "! <em>Key property</em> PurchasingDocumentItem
        purchasing_document_item   TYPE c LENGTH 5,
        "! <em>Key property</em> ScheduleLine
        schedule_line              TYPE c LENGTH 4,
        "! DelivDateCategory
        deliv_date_category        TYPE c LENGTH 1,
        "! ScheduleLineDeliveryDate
        schedule_line_delivery_dat TYPE datn,
        "! PurchaseOrderQuantityUnit
        purchase_order_quantity_un TYPE c LENGTH 3,
        "! ScheduleLineOrderQuantity
        schedule_line_order_quanti TYPE p LENGTH 7 DECIMALS 3,
        "! ScheduleLineDeliveryTime
        schedule_line_delivery_tim TYPE timn,
        "! SchedLineStscDeliveryDate
        sched_line_stsc_delivery_d TYPE datn,
        "! PurchaseRequisition
        purchase_requisition       TYPE c LENGTH 10,
        "! PurchaseRequisitionItem
        purchase_requisition_item  TYPE c LENGTH 5,
        "! ScheduleLineCommittedQuantity
        schedule_line_committed_qu TYPE p LENGTH 7 DECIMALS 3,
        "! PerformancePeriodStartDate
        performance_period_start_d TYPE datn,
        "! PerformancePeriodEndDate
        performance_period_end_dat TYPE datn,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_a_purchase_order_schedul_2,
      "! <p class="shorttext synchronized">List of A_PurchaseOrderScheduleLineType</p>
      tyt_a_purchase_order_schedul_2 TYPE STANDARD TABLE OF tys_a_purchase_order_schedul_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_PurchaseOrderType</p>
      BEGIN OF tys_a_purchase_order_type,
        "! <em>Key property</em> PurchaseOrder
        purchase_order             TYPE c LENGTH 10,
        "! CompanyCode
        company_code               TYPE c LENGTH 4,
        "! PurchaseOrderType
        purchase_order_type        TYPE c LENGTH 4,
        "! PurchasingDocumentDeletionCode
        purchasing_document_deleti TYPE c LENGTH 1,
        "! PurchasingProcessingStatus
        purchasing_processing_stat TYPE c LENGTH 2,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! CreationDate
        creation_date              TYPE datn,
        "! LastChangeDateTime
        last_change_date_time      TYPE timestampl,
        "! Supplier
        supplier                   TYPE c LENGTH 10,
        "! PurchaseOrderSubtype
        purchase_order_subtype     TYPE c LENGTH 1,
        "! Language
        language                   TYPE c LENGTH 2,
        "! PaymentTerms
        payment_terms              TYPE c LENGTH 4,
        "! CashDiscount1Days
        cash_discount_1_days       TYPE p LENGTH 2 DECIMALS 0,
        "! CashDiscount2Days
        cash_discount_2_days       TYPE p LENGTH 2 DECIMALS 0,
        "! NetPaymentDays
        net_payment_days           TYPE p LENGTH 2 DECIMALS 0,
        "! CashDiscount1Percent
        cash_discount_1_percent    TYPE p LENGTH 3 DECIMALS 3,
        "! CashDiscount2Percent
        cash_discount_2_percent    TYPE p LENGTH 3 DECIMALS 3,
        "! PurchasingOrganization
        purchasing_organization    TYPE c LENGTH 4,
        "! PurchasingDocumentOrigin
        purchasing_document_origin TYPE c LENGTH 1,
        "! PurchasingGroup
        purchasing_group           TYPE c LENGTH 3,
        "! PurchaseOrderDate
        purchase_order_date        TYPE datn,
        "! DocumentCurrency
        document_currency          TYPE c LENGTH 5,
        "! ExchangeRate
        exchange_rate              TYPE c LENGTH 12,
        "! ExchangeRateIsFixed
        exchange_rate_is_fixed     TYPE abap_bool,
        "! ValidityStartDate
        validity_start_date        TYPE datn,
        "! ValidityEndDate
        validity_end_date          TYPE datn,
        "! SupplierQuotationExternalID
        supplier_quotation_externa TYPE c LENGTH 10,
        "! PurchasingCollectiveNumber
        purchasing_collective_numb TYPE c LENGTH 10,
        "! SupplierRespSalesPersonName
        supplier_resp_sales_person TYPE c LENGTH 30,
        "! SupplierPhoneNumber
        supplier_phone_number      TYPE c LENGTH 16,
        "! SupplyingSupplier
        supplying_supplier         TYPE c LENGTH 10,
        "! SupplyingPlant
        supplying_plant            TYPE c LENGTH 4,
        "! IncotermsClassification
        incoterms_classification   TYPE c LENGTH 3,
        "! CorrespncExternalReference
        correspnc_external_referen TYPE c LENGTH 12,
        "! CorrespncInternalReference
        correspnc_internal_referen TYPE c LENGTH 12,
        "! InvoicingParty
        invoicing_party            TYPE c LENGTH 10,
        "! ReleaseIsNotCompleted
        release_is_not_completed   TYPE abap_bool,
        "! PurchasingCompletenessStatus
        purchasing_completeness_st TYPE abap_bool,
        "! IncotermsVersion
        incoterms_version          TYPE c LENGTH 4,
        "! IncotermsLocation1
        incoterms_location_1       TYPE c LENGTH 70,
        "! IncotermsLocation2
        incoterms_location_2       TYPE c LENGTH 70,
        "! ManualSupplierAddressID
        manual_supplier_address_id TYPE c LENGTH 10,
        "! IsEndOfPurposeBlocked
        is_end_of_purpose_blocked  TYPE c LENGTH 1,
        "! AddressCityName
        address_city_name          TYPE c LENGTH 40,
        "! AddressFaxNumber
        address_fax_number         TYPE c LENGTH 30,
        "! AddressHouseNumber
        address_house_number       TYPE c LENGTH 10,
        "! AddressName
        address_name               TYPE c LENGTH 40,
        "! AddressPostalCode
        address_postal_code        TYPE c LENGTH 10,
        "! AddressStreetName
        address_street_name        TYPE c LENGTH 60,
        "! AddressPhoneNumber
        address_phone_number       TYPE c LENGTH 30,
        "! AddressRegion
        address_region             TYPE c LENGTH 3,
        "! AddressCountry
        address_country            TYPE c LENGTH 3,
        "! AddressCorrespondenceLanguage
        address_correspondence_lan TYPE c LENGTH 2,
        "! PurgAggrgdProdCmplncSuplrSts
        purg_aggrgd_prod_cmplnc_su TYPE c LENGTH 1,
        "! PurgAggrgdProdMarketabilitySts
        purg_aggrgd_prod_marketabi TYPE c LENGTH 1,
        "! PurgAggrgdSftyDataSheetStatus
        purg_aggrgd_sfty_data_shee TYPE c LENGTH 1,
        "! PurgProdCmplncTotDngrsGoodsSts
        purg_prod_cmplnc_tot_dngrs TYPE c LENGTH 1,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_a_purchase_order_type,
      "! <p class="shorttext synchronized">List of A_PurchaseOrderType</p>
      tyt_a_purchase_order_type TYPE STANDARD TABLE OF tys_a_purchase_order_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_PurOrdAccountAssignmentType</p>
      BEGIN OF tys_a_pur_ord_account_assign_2,
        "! <em>Key property</em> PurchaseOrder
        purchase_order             TYPE c LENGTH 10,
        "! <em>Key property</em> PurchaseOrderItem
        purchase_order_item        TYPE c LENGTH 5,
        "! <em>Key property</em> AccountAssignmentNumber
        account_assignment_number  TYPE c LENGTH 2,
        "! IsDeleted
        is_deleted                 TYPE abap_bool,
        "! PurchaseOrderQuantityUnit
        purchase_order_quantity_un TYPE c LENGTH 3,
        "! Quantity
        quantity                   TYPE p LENGTH 7 DECIMALS 3,
        "! MultipleAcctAssgmtDistrPercent
        multiple_acct_assgmt_distr TYPE p LENGTH 2 DECIMALS 1,
        "! DocumentCurrency
        document_currency          TYPE c LENGTH 5,
        "! PurgDocNetAmount
        purg_doc_net_amount        TYPE p LENGTH 8 DECIMALS 3,
        "! GLAccount
        glaccount                  TYPE c LENGTH 10,
        "! BusinessArea
        business_area              TYPE c LENGTH 4,
        "! CostCenter
        cost_center                TYPE c LENGTH 10,
        "! SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! SalesOrderItem
        sales_order_item           TYPE c LENGTH 6,
        "! SalesOrderScheduleLine
        sales_order_schedule_line  TYPE c LENGTH 4,
        "! MasterFixedAsset
        master_fixed_asset         TYPE c LENGTH 12,
        "! FixedAsset
        fixed_asset                TYPE c LENGTH 4,
        "! GoodsRecipientName
        goods_recipient_name       TYPE c LENGTH 12,
        "! UnloadingPointName
        unloading_point_name       TYPE c LENGTH 25,
        "! ControllingArea
        controlling_area           TYPE c LENGTH 4,
        "! CostObject
        cost_object                TYPE c LENGTH 12,
        "! OrderID
        order_id                   TYPE c LENGTH 12,
        "! ProfitCenter
        profit_center              TYPE c LENGTH 10,
        "! WBSElementInternalID
        wbselement_internal_id     TYPE c LENGTH 24,
        "! WBSElement
        wbselement                 TYPE c LENGTH 24,
        "! WBSElementExternalID
        wbselement_external_id     TYPE c LENGTH 24,
        "! ProjectNetwork
        project_network            TYPE c LENGTH 12,
        "! NetworkActivity
        network_activity           TYPE c LENGTH 4,
        "! RealEstateObject
        real_estate_object         TYPE c LENGTH 40,
        "! PartnerAccountNumber
        partner_account_number     TYPE c LENGTH 10,
        "! CommitmentItem
        commitment_item            TYPE c LENGTH 24,
        "! JointVentureRecoveryCode
        joint_venture_recovery_cod TYPE c LENGTH 2,
        "! FundsCenter
        funds_center               TYPE c LENGTH 16,
        "! Fund
        fund                       TYPE c LENGTH 10,
        "! FunctionalArea
        functional_area            TYPE c LENGTH 16,
        "! SettlementReferenceDate
        settlement_reference_date  TYPE datn,
        "! TaxCode
        tax_code                   TYPE c LENGTH 2,
        "! TaxJurisdiction
        tax_jurisdiction           TYPE c LENGTH 15,
        "! CostCtrActivityType
        cost_ctr_activity_type     TYPE c LENGTH 6,
        "! BusinessProcess
        business_process           TYPE c LENGTH 12,
        "! EarmarkedFundsDocument
        earmarked_funds_document   TYPE c LENGTH 10,
        "! GrantID
        grant_id                   TYPE c LENGTH 20,
        "! BudgetPeriod
        budget_period              TYPE c LENGTH 10,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_a_pur_ord_account_assign_2,
      "! <p class="shorttext synchronized">List of A_PurOrdAccountAssignmentType</p>
      tyt_a_pur_ord_account_assign_2 TYPE STANDARD TABLE OF tys_a_pur_ord_account_assign_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_PurOrdPricingElementType</p>
      BEGIN OF tys_a_pur_ord_pricing_elemen_2,
        "! <em>Key property</em> PurchaseOrder
        purchase_order             TYPE c LENGTH 10,
        "! <em>Key property</em> PurchaseOrderItem
        purchase_order_item        TYPE c LENGTH 5,
        "! <em>Key property</em> PricingDocument
        pricing_document           TYPE c LENGTH 10,
        "! <em>Key property</em> PricingDocumentItem
        pricing_document_item      TYPE c LENGTH 6,
        "! <em>Key property</em> PricingProcedureStep
        pricing_procedure_step     TYPE c LENGTH 3,
        "! <em>Key property</em> PricingProcedureCounter
        pricing_procedure_counter  TYPE c LENGTH 3,
        "! ConditionType
        condition_type             TYPE c LENGTH 4,
        "! ConditionRateValue
        condition_rate_value       TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionCurrency
        condition_currency         TYPE c LENGTH 5,
        "! PriceDetnExchangeRate
        price_detn_exchange_rate   TYPE c LENGTH 12,
        "! TransactionCurrency
        transaction_currency       TYPE c LENGTH 5,
        "! ConditionAmount
        condition_amount           TYPE p LENGTH 9 DECIMALS 3,
        "! ConditionQuantityUnit
        condition_quantity_unit    TYPE c LENGTH 3,
        "! ConditionQuantity
        condition_quantity         TYPE p LENGTH 3 DECIMALS 0,
        "! ConditionApplication
        condition_application      TYPE c LENGTH 2,
        "! PricingDateTime
        pricing_date_time          TYPE c LENGTH 14,
        "! ConditionCalculationType
        condition_calculation_type TYPE c LENGTH 3,
        "! ConditionBaseValue
        condition_base_value       TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionToBaseQtyNmrtr
        condition_to_base_qty_nmrt TYPE p LENGTH 6 DECIMALS 0,
        "! ConditionToBaseQtyDnmntr
        condition_to_base_qty_dnmn TYPE p LENGTH 6 DECIMALS 0,
        "! ConditionCategory
        condition_category         TYPE c LENGTH 1,
        "! ConditionIsForStatistics
        condition_is_for_statistic TYPE abap_bool,
        "! PricingScaleType
        pricing_scale_type         TYPE c LENGTH 1,
        "! IsRelevantForAccrual
        is_relevant_for_accrual    TYPE abap_bool,
        "! CndnIsRelevantForInvoiceList
        cndn_is_relevant_for_invoi TYPE c LENGTH 1,
        "! ConditionOrigin
        condition_origin           TYPE c LENGTH 1,
        "! IsGroupCondition
        is_group_condition         TYPE c LENGTH 1,
        "! CndnIsRelevantForLimitValue
        cndn_is_relevant_for_limit TYPE abap_bool,
        "! ConditionSequentialNumber
        condition_sequential_numbe TYPE c LENGTH 3,
        "! ConditionControl
        condition_control          TYPE c LENGTH 1,
        "! ConditionInactiveReason
        condition_inactive_reason  TYPE c LENGTH 1,
        "! ConditionClass
        condition_class            TYPE c LENGTH 1,
        "! FactorForConditionBasisValue
        factor_for_condition_basis TYPE /iwbep/v4_float,
        "! PricingScaleBasis
        pricing_scale_basis        TYPE c LENGTH 3,
        "! ConditionScaleBasisValue
        condition_scale_basis_valu TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionScaleBasisCurrency
        condition_scale_basis_curr TYPE c LENGTH 5,
        "! ConditionScaleBasisUnit
        condition_scale_basis_unit TYPE c LENGTH 3,
        "! CndnIsRelevantForIntcoBilling
        cndn_is_relevant_for_intco TYPE abap_bool,
        "! ConditionIsForConfiguration
        condition_is_for_configura TYPE abap_bool,
        "! ConditionIsManuallyChanged
        condition_is_manually_chan TYPE abap_bool,
        "! ConditionRecord
        condition_record           TYPE c LENGTH 10,
        "! AccessNumberOfAccessSequence
        access_number_of_access_se TYPE c LENGTH 3,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_a_pur_ord_pricing_elemen_2,
      "! <p class="shorttext synchronized">List of A_PurOrdPricingElementType</p>
      tyt_a_pur_ord_pricing_elemen_2 TYPE STANDARD TABLE OF tys_a_pur_ord_pricing_elemen_2 WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! A_POSubcontractingComponent
        "! <br/> Collection of type 'A_POSubcontractingComponentType'
        a_posubcontracting_compone TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_POSUBCONTRACTING_COMPONE',
        "! A_PurchaseOrder
        "! <br/> Collection of type 'A_PurchaseOrderType'
        a_purchase_order           TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PURCHASE_ORDER',
        "! A_PurchaseOrderItem
        "! <br/> Collection of type 'A_PurchaseOrderItemType'
        a_purchase_order_item      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PURCHASE_ORDER_ITEM',
        "! A_PurchaseOrderItemNote
        "! <br/> Collection of type 'A_PurchaseOrderItemNoteType'
        a_purchase_order_item_note TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PURCHASE_ORDER_ITEM_NOTE',
        "! A_PurchaseOrderNote
        "! <br/> Collection of type 'A_PurchaseOrderNoteType'
        a_purchase_order_note      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PURCHASE_ORDER_NOTE',
        "! A_PurchaseOrderScheduleLine
        "! <br/> Collection of type 'A_PurchaseOrderScheduleLineType'
        a_purchase_order_schedule  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PURCHASE_ORDER_SCHEDULE',
        "! A_PurOrdAccountAssignment
        "! <br/> Collection of type 'A_PurOrdAccountAssignmentType'
        a_pur_ord_account_assignme TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PUR_ORD_ACCOUNT_ASSIGNME',
        "! A_PurOrdPricingElement
        "! <br/> Collection of type 'A_PurOrdPricingElementType'
        a_pur_ord_pricing_element  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PUR_ORD_PRICING_ELEMENT',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the function imports</p>
      BEGIN OF gcs_function_import,
        "! GetOutputBinaryData
        "! <br/> See structure type {@link ..tys_parameters_1} for the parameters
        get_output_binary_data TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'GET_OUTPUT_BINARY_DATA',
        "! GetPDF
        "! <br/> See structure type {@link ..tys_parameters_2} for the parameters
        get_pdf                TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'GET_PDF',
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
        "! <p class="shorttext synchronized">Internal names for DummyFunctionImportResult</p>
        "! See also structure type {@link ..tys_dummy_function_import_resu}
        BEGIN OF dummy_function_import_resu,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF dummy_function_import_resu,
        "! <p class="shorttext synchronized">Internal names for GetPDFResult</p>
        "! See also structure type {@link ..tys_get_pdfresult}
        BEGIN OF get_pdfresult,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF get_pdfresult,
      END OF gcs_complex_type.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for A_POSubcontractingComponentType</p>
        "! See also structure type {@link ..tys_a_posubcontracting_compo_2}
        BEGIN OF a_posubcontracting_compo_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_posubcontracting_compo_2,
        "! <p class="shorttext synchronized">Internal names for A_PurchaseOrderItemNoteType</p>
        "! See also structure type {@link ..tys_a_purchase_order_item_no_2}
        BEGIN OF a_purchase_order_item_no_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_purchase_order_item_no_2,
        "! <p class="shorttext synchronized">Internal names for A_PurchaseOrderItemType</p>
        "! See also structure type {@link ..tys_a_purchase_order_item_type}
        BEGIN OF a_purchase_order_item_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_AccountAssignment
            to_account_assignment      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_ACCOUNT_ASSIGNMENT',
            "! to_PurchaseOrder
            to_purchase_order          TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PURCHASE_ORDER',
            "! to_PurchaseOrderItemNote
            to_purchase_order_item_not TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PURCHASE_ORDER_ITEM_NOT',
            "! to_PurchaseOrderPricingElement
            to_purchase_order_pricing  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PURCHASE_ORDER_PRICING',
            "! to_ScheduleLine
            to_schedule_line           TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SCHEDULE_LINE',
          END OF navigation,
        END OF a_purchase_order_item_type,
        "! <p class="shorttext synchronized">Internal names for A_PurchaseOrderNoteType</p>
        "! See also structure type {@link ..tys_a_purchase_order_note_type}
        BEGIN OF a_purchase_order_note_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_purchase_order_note_type,
        "! <p class="shorttext synchronized">Internal names for A_PurchaseOrderScheduleLineType</p>
        "! See also structure type {@link ..tys_a_purchase_order_schedul_2}
        BEGIN OF a_purchase_order_schedul_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_SubcontractingComponent
            to_subcontracting_componen TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SUBCONTRACTING_COMPONEN',
          END OF navigation,
        END OF a_purchase_order_schedul_2,
        "! <p class="shorttext synchronized">Internal names for A_PurchaseOrderType</p>
        "! See also structure type {@link ..tys_a_purchase_order_type}
        BEGIN OF a_purchase_order_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_PurchaseOrderItem
            to_purchase_order_item TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PURCHASE_ORDER_ITEM',
            "! to_PurchaseOrderNote
            to_purchase_order_note TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PURCHASE_ORDER_NOTE',
          END OF navigation,
        END OF a_purchase_order_type,
        "! <p class="shorttext synchronized">Internal names for A_PurOrdAccountAssignmentType</p>
        "! See also structure type {@link ..tys_a_pur_ord_account_assign_2}
        BEGIN OF a_pur_ord_account_assign_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_pur_ord_account_assign_2,
        "! <p class="shorttext synchronized">Internal names for A_PurOrdPricingElementType</p>
        "! See also structure type {@link ..tys_a_pur_ord_pricing_elemen_2}
        BEGIN OF a_pur_ord_pricing_elemen_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_pur_ord_pricing_elemen_2,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.

