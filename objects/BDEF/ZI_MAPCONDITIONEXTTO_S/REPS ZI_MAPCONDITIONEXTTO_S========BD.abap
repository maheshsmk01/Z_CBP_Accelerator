managed with additional save implementation in class ZBP_I_MAPCONDITIONEXTTO_S unique;
strict;
with draft;
define behavior for ZI_MapConditionExtTo_S alias MapConditionTypeAll
draft table ZPR_TB_CMAPE_D_S
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

  association _MapConditionTypesTo { create ( features : instance ); with draft; }

  validation ValidateTransportRequest on save ##NOT_ASSIGNED_TO_DETACT { create; update; }

  side effects {
    action SelectCustomizingTransptReq affects $self;
  }

}

define behavior for ZI_MapConditionExtTo alias MapConditionTypesTo ##UNMAPPED_FIELD
persistent table ZPR_TB_CMAP_EXT
draft table ZPR_TB_CMAP_E_D
lock dependent by _MapConditionTypeAll
authorization dependent by _MapConditionTypeAll
{
  field ( mandatory : create )
   CondType,
   CharName;

  field ( readonly )
   SingletonID;

  field ( readonly : update )
   CondType,
   CharName;

  field ( notrigger )
   SingletonID;


  update( features : global );
  delete( features : global );

  mapping for ZPR_TB_CMAP_EXT
  {
    CondType = COND_TYPE;
    CharName = CHAR_NAME;
  }

  association _MapConditionTypeAll { with draft; }

  validation ValidateTransportRequest on save ##NOT_ASSIGNED_TO_DETACT { create; update; delete; }

}