  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define DummyFunctionImportResult</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_dummy_function_import_resu RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define GetPDFResult</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_get_pdfresult RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_POSubcontractingComponentType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_posubcontracting_compo_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_PurchaseOrderItemNoteType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_purchase_order_item_no_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_PurchaseOrderItemType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_purchase_order_item_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_PurchaseOrderNoteType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_purchase_order_note_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_PurchaseOrderScheduleLineType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_purchase_order_schedul_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_PurchaseOrderType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_purchase_order_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_PurOrdAccountAssignmentType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_pur_ord_account_assign_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_PurOrdPricingElementType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_pur_ord_pricing_elemen_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define GetOutputBinaryData</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_get_output_binary_data RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define GetPDF</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_get_pdf RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define all primitive types</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS define_primitive_types RAISING /iwbep/cx_gateway.
