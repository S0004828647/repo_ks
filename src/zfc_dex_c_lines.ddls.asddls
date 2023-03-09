@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZFC_DEX_R_LINES'
@ObjectModel.semanticKey: [ 'Zzfpa', 'Vkorg', 'Zzcma', 'ZzStartDate' ]
define view entity ZFC_DEX_C_LINES
  //  provider contract transactional_query
  as projection on ZFC_DEX_R_LINES
{
  key Zzfpa,
  key Vkorg,
  key Zzcma,
  key ZzStartDate,
      FiscalMonth,
      Vtweg,
      ZzPeriodStatus,
      
      ZzPerCrit,
      
      ZzZfcTotal,
      ZzZorTotal,
      ZzZsbTotal,
      ZzZkb1Total,
      ZzQitOr,
      ZzQitKb,
      ZzRollingTotal,
      Meins,
      PipelineQty,
      Timestamp,
      _Custmat : redirected to parent ZFC_DEX_C_CUSTMAT

}
