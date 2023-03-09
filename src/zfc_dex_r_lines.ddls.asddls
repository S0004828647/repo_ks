@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: '##GENERATED FC LINES'
define view entity ZFC_DEX_R_LINES
  as select from zfc_dex_lines as Lines
  association to parent ZFC_DEX_R_CUSTMAT as _Custmat on  $projection.Zzfpa = _Custmat.Zzfpa
                                                      and $projection.Vkorg = _Custmat.Vkorg
                                                      and $projection.Zzcma = _Custmat.Zzcma
{
  key zzfpa            as Zzfpa,
  key vkorg            as Vkorg,
  key zzcma            as Zzcma,
  key zz_start_date    as ZzStartDate,
      fiscal_month     as FiscalMonth,
      vtweg            as Vtweg,
      zz_period_status as ZzPeriodStatus,

      case zz_period_status
        when 'G'  then 3    -- 'green'   | 3: green colour
        when 'R'  then 1    -- 'red'     | 1: red colour
                  else 0    -- 'nothing' | 0: unknown
        end            as ZzPerCrit,

      @Semantics.quantity.unitOfMeasure: 'Meins'
      zz_zfc_total     as ZzZfcTotal,
      @Semantics.quantity.unitOfMeasure: 'Meins'
      zz_zor_total     as ZzZorTotal,
      @Semantics.quantity.unitOfMeasure: 'Meins'
      zz_zsb_total     as ZzZsbTotal,
      @Semantics.quantity.unitOfMeasure: 'Meins'
      zz_zkb1_total    as ZzZkb1Total,
      @Semantics.quantity.unitOfMeasure: 'Meins'
      zz_qit_or        as ZzQitOr,
      @Semantics.quantity.unitOfMeasure: 'Meins'
      zz_qit_kb        as ZzQitKb,
      @Semantics.quantity.unitOfMeasure: 'Meins'
      zz_rolling_total as ZzRollingTotal,
      meins            as Meins,
      @Semantics.quantity.unitOfMeasure: 'Meins'
      pipeline_qty     as PipelineQty,
      timestamp        as Timestamp,
      _Custmat

}
