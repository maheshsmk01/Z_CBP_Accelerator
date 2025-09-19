unmanaged implementation in class zbp_pr_ud_display unique;
strict ( 1 );

define behavior for ZPR_UD_DISPLAY //alias <alias_name>
//late numbering
lock master
authorization master ( instance )
//etag master <field_name>
{
  create ( authorization : global );
  update;
  delete;
  field ( readonly ) Lot, Specification;
}