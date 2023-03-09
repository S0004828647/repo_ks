@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: '##GENERATED FC CUSTMAT'
define root view entity ZFC_DEX_R_CUSTMAT
  as select from zfc_dex_custmat as Custmat
  composition [0..*] of ZFC_DEX_R_LINES as _Lines
{
  key zzfpa            as Zzfpa,
  key vkorg            as Vkorg,
  key zzcma            as Zzcma,
      vtweg            as Vtweg,
      zz_cpn_status    as ZzCpnStatus,

      case zz_cpn_status
        when 'G'  then 3    -- 'green'   | 3: green colour
        when 'R'  then 1    -- 'red'     | 1: red colour
                  else 0    -- 'nothing' | 0: unknown
        end            as ZzCpnCrit,

      loaddate         as Loaddate,
      customer_comment as CustomerComment,
      timestamp        as Timestamp,
      _Lines
}
