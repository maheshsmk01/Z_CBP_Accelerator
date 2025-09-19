managed with additional save implementation in class ZBP_I_POPRICINGCONDEXTT_S unique;
strict;
with draft;
define behavior for ZI_PoPricingConExtT_S alias PoPricingConditiAll
draft table ZPR_TB_PREXT_D_S
with unmanaged save
lock master total etag LastChangedAtMax
authorization master( global )
{
  field ( readonly )
   SingletonID;

  field ( features : instance )
   TransportRequestID;

  field ( notrigger )
   SingletonID,
   LastChangedAtMax;


  update;
  internal create;
  internal delete;

  draft action ( features : instance ) Edit with additional implementation;
  draft action Activate optimized;
  draft action Discard;
  draft action Resume;
  draft determine action Prepare;
  action ( features : instance ) SelectCustomizingTransptReq parameter D_SelectCustomizingTransptReqP result [1] $self;

  association _PoPricingConditionT { create ( features : instance ); with draft; }

  validation ValidateTransportRequest on save ##NOT_ASSIGNED_TO_DETACT { create; update; }

  side effects {
    action SelectCustomizingTransptReq affects $self;
  }

}

define behavior for ZI_PoPricingCondExtT alias PoPricingConditionT ##UNMAPPED_FIELD
persistent table ZPR_TB_PRICE_EXT
draft table ZPR_TB_PRICE__D
lock dependent by _PoPricingConditiAll
authorization dependent by _PoPricingConditiAll
{
  field ( mandatory : create )
   CondType,
   Counter;

  field ( readonly )
   SingletonID;

  field ( readonly : update )
   CondType,
   Counter;

  field ( notrigger )
   SingletonID;


  update( features : global );
  delete( features : global );

  mapping for ZPR_TB_PRICE_EXT
  {
    CondType = COND_TYPE;
    Counter = COUNTER;
    CondClass = COND_CLASS;
    CalcType = CALC_TYPE;
    Low = LOW;
    High = HIGH;
    CondValue = COND_VALUE;
    Unit = UNIT;
    Per = PER;
    Uom = UOM;
    StartDate = START_DATE;
    EndDate = END_DATE;
    DeletionInd = DELETION_IND;
  }

  association _PoPricingConditiAll { with draft; }

  validation ValidateTransportRequest on save ##NOT_ASSIGNED_TO_DETACT { create; update; delete; }

}