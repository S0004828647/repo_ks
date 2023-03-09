@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZFC_DEX_R_CUSTMAT'
@ObjectModel.semanticKey: [ 'Zzfpa', 'Vkorg', 'Zzcma' ]
define root view entity ZFC_DEX_C_CUSTMAT
  provider contract transactional_query
  as projection on ZFC_DEX_R_CUSTMAT
{
  key Zzfpa,
  key Vkorg,
  key Zzcma,
      Vtweg,
      ZzCpnStatus,

      ZzCpnCrit,

      Loaddate,
      CustomerComment,
      Timestamp,
      _Lines : redirected to composition child ZFC_DEX_C_LINES
}
