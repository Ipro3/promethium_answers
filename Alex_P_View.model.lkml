
connection:"pmdevpresto"


explore: DIM_PLAN__0beb3687_1841_4749_bdbc_ea0b0b559cf6 {

}


view: fact_subscription_activity__7f352742_6f62_4cba_a7e0_1721680f954c {
sql_table_name:hive.s3media.fact_subscription_activity ;;
dimension: sbscrn_actvty_key {
 sql: ${TABLE}.sbscrn_actvty_key;;
}
dimension: sbscrn_id {
 sql: ${TABLE}.sbscrn_id;;
}
dimension: agn_key {
 sql: ${TABLE}.agn_key;;
}
dimension: used_actvty_type_id {
 sql: ${TABLE}.used_actvty_type_id;;
}
dimension: actvty_dt {
 sql: ${TABLE}.actvty_dt;;
}
dimension: actvty_ts {
 sql: ${TABLE}.actvty_ts;;
}
dimension: hhld_id {
 sql: ${TABLE}.hhld_id;;
}
dimension: prty_key {
 sql: ${TABLE}.prty_key;;
}
dimension: prty_id {
 sql: ${TABLE}.prty_id;;
}
dimension: parnt_acct_key {
 sql: ${TABLE}.parnt_acct_key;;
}
dimension: parnt_acct_id {
 sql: ${TABLE}.parnt_acct_id;;
}
dimension: parnt_acct_num {
 sql: ${TABLE}.parnt_acct_num;;
}
dimension: child_acct_key {
 sql: ${TABLE}.child_acct_key;;
}
dimension: child_acct_id {
 sql: ${TABLE}.child_acct_id;;
}
dimension: child_acct_num {
 sql: ${TABLE}.child_acct_num;;
}
dimension: veh_key {
 sql: ${TABLE}.veh_key;;
}
dimension: dvc_key {
 sql: ${TABLE}.dvc_key;;
}
dimension: dvc_id {
 sql: ${TABLE}.dvc_id;;
}
dimension: eqmnt_key {
 sql: ${TABLE}.eqmnt_key;;
}
measure: eqmnt_id {
type:count_distinct
 sql: ${TABLE}.eqmnt_id;;
}
dimension: plan_key {
 sql: ${TABLE}.plan_key;;
}
dimension: plan_id {
 sql: ${TABLE}.plan_id;;
}
dimension: ofr_id {
 sql: ${TABLE}.ofr_id;;
}
dimension: from_plan_key {
 sql: ${TABLE}.from_plan_key;;
}
dimension: from_plan_id {
 sql: ${TABLE}.from_plan_id;;
}
dimension: from_ofr_id {
 sql: ${TABLE}.from_ofr_id;;
}
dimension: prod_key {
 sql: ${TABLE}.prod_key;;
}
dimension: prod_id {
 sql: ${TABLE}.prod_id;;
}
dimension: from_prod_key {
 sql: ${TABLE}.from_prod_key;;
}
dimension: from_prod_id {
 sql: ${TABLE}.from_prod_id;;
}
dimension: pkg_id {
 sql: ${TABLE}.pkg_id;;
}
dimension: from_pkg_id {
 sql: ${TABLE}.from_pkg_id;;
}
dimension: feat_id {
 sql: ${TABLE}.feat_id;;
}
dimension: csr_id {
 sql: ${TABLE}.csr_id;;
}
dimension: ptnr_id {
 sql: ${TABLE}.ptnr_id;;
}
dimension: lnkd_inet_fl {
 sql: ${TABLE}.lnkd_inet_fl;;
}
dimension: mrd_type_cd {
 sql: ${TABLE}.mrd_type_cd;;
}
dimension: sbscr_lifcyc_key {
 sql: ${TABLE}.sbscr_lifcyc_key;;
}
dimension: conv_rep_own_segmt_key {
 sql: ${TABLE}.conv_rep_own_segmt_key;;
}
dimension: ownr_type2_key {
 sql: ${TABLE}.ownr_type2_key;;
}
dimension: deactivation_reason_code {
 sql: ${TABLE}.deactivation_reason_code;;
}
dimension: trial_id {
 sql: ${TABLE}.trial_id;;
}
dimension: srvc_id {
 sql: ${TABLE}.srvc_id;;
}
dimension: renw_id {
 sql: ${TABLE}.renw_id;;
}
dimension: from_renw_id {
 sql: ${TABLE}.from_renw_id;;
}
dimension: coll_scnro_id {
 sql: ${TABLE}.coll_scnro_id;;
}
dimension: srvc_lvl_pmt_key {
 sql: ${TABLE}.srvc_lvl_pmt_key;;
}
dimension: nonpay_srvc_key {
 sql: ${TABLE}.nonpay_srvc_key;;
}
dimension: billing_method {
 sql: ${TABLE}.billing_method;;
}
dimension: from_billing_method {
 sql: ${TABLE}.from_billing_method;;
}
dimension: slfpay_turnover_rsn {
 sql: ${TABLE}.slfpay_turnover_rsn;;
}
dimension: slfpay_turnover_dt {
 sql: ${TABLE}.slfpay_turnover_dt;;
}
dimension: future_deactvn_dt {
 sql: ${TABLE}.future_deactvn_dt;;
}
dimension: schd_seasonal_susp_reactvn_dt {
 sql: ${TABLE}.schd_seasonal_susp_reactvn_dt;;
}
dimension: call_reason {
 sql: ${TABLE}.call_reason;;
}
dimension: call_disposition {
 sql: ${TABLE}.call_disposition;;
}
dimension: inse_user_id {
 sql: ${TABLE}.inse_user_id;;
}
dimension: inse_ts {
 sql: ${TABLE}.inse_ts;;
}
dimension: updt_user_id {
 sql: ${TABLE}.updt_user_id;;
}
dimension: updt_ts {
 sql: ${TABLE}.updt_ts;;
}
dimension: save_activity {
 sql: ${TABLE}.save_activity;;
}
dimension: deact_activity_by_save_agent {
 sql: ${TABLE}.deact_activity_by_save_agent;;
}
dimension: conversion_activity_by_save_agent {
 sql: ${TABLE}.conversion_activity_by_save_agent;;
}
dimension: save_opportunity_activity {
 sql: ${TABLE}.save_opportunity_activity;;
}
dimension: actvty_type_id {
 sql: ${TABLE}.actvty_type_id;;
}
}


view: MASTER_PLAN_TABLE_WDATES__d42910ee_44fa_4fd3_9dde_31018d366035 {
sql_table_name:pm61oracle_media.RDSORACLEFORPRESTO.MASTER_PLAN_TABLE_WDATES ;;
measure: PLAN_ID {
type:count_distinct
 sql: ${TABLE}.PLAN_ID;;
}
dimension: PLAN_NAME {
 sql: ${TABLE}.PLAN_NAME;;
}
measure: MER {
type:count_distinct
 sql: ${TABLE}.MER;;
}
dimension: DISC {
 sql: ${TABLE}.DISC;;
}
dimension: PACKAGE {
 sql: ${TABLE}.PACKAGE;;
}
dimension: LEN {
 sql: ${TABLE}.LEN;;
}
dimension: ROLLUP1 {
 sql: ${TABLE}.ROLLUP1;;
}
dimension: ASP {
 sql: ${TABLE}.ASP;;
}
dimension: STARTDATE {
 sql: ${TABLE}.STARTDATE;;
}
dimension: ENDDATE {
 sql: ${TABLE}.ENDDATE;;
}
}


view: DIM_PLAN__0beb3687_1841_4749_bdbc_ea0b0b559cf6 {
sql_table_name:pm61oracle_media.RDSORACLEFORPRESTO.DIM_PLAN ;;
measure: PLAN_RECORD_KEY {
type:count_distinct
 sql: ${TABLE}.PLAN_RECORD_KEY;;
}
measure: PLAN_ID {
type:count_distinct
 sql: ${TABLE}.PLAN_ID;;
}
dimension: PLAN_NAME {
 sql: ${TABLE}.PLAN_NAME;;
}
dimension: USED_FLAG {
 sql: ${TABLE}.USED_FLAG;;
}
dimension: PLAN_DESCRIPTION {
 sql: ${TABLE}.PLAN_DESCRIPTION;;
}
dimension: MARKET_TYPE {
 sql: ${TABLE}.MARKET_TYPE;;
}
dimension: CHANGE_DATE_START {
 sql: ${TABLE}.CHANGE_DATE_START;;
}
dimension: CHANGE_DATE_END {
 sql: ${TABLE}.CHANGE_DATE_END;;
}
dimension: CURRENT_RECORD_FLAG {
 sql: ${TABLE}.CURRENT_RECORD_FLAG;;
}
dimension: DELETED_RECORD_FLAG {
 sql: ${TABLE}.DELETED_RECORD_FLAG;;
}
}