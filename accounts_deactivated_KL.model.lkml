
connection: "pmdevpresto"


explore: DIM_PLAN__37383b8b_c879_45c4_9e77_1810516a527e {

join: fact_subscription_activity__73ff33cc_3f9c_4814_9059_6f1c2472ee0b {
 relationship: one_to_one
 sql_on: ${DIM_PLAN__37383b8b_c879_45c4_9e77_1810516a527e.PLAN_ID} = ${null.PLAN_ID} ;;
}
join: MASTER_PLAN_TABLE_WDATES__14ccc627_6529_4ea7_a038_f0d4dfd61002 {
 relationship: one_to_one
 sql_on: ${MASTER_PLAN_TABLE_WDATES__14ccc627_6529_4ea7_a038_f0d4dfd61002.PLAN_ID} = ${null.PLAN_ID} ;;
}
}


view: DIM_PLAN__37383b8b_c879_45c4_9e77_1810516a527e {
sql_table_name:pm61oracle_media.RDSORACLEFORPRESTO.DIM_PLAN ;;
dimension: PLAN_RECORD_KEY {
 type: string
 sql: ${TABLE}.PLAN_RECORD_KEY;;
}
dimension: PLAN_ID {
 type: string
 sql: ${TABLE}.PLAN_ID;;
}
dimension: PLAN_NAME {
 type: string
 sql: ${TABLE}.PLAN_NAME;;
}
dimension: USED_FLAG {
 type: string
 sql: ${TABLE}.USED_FLAG;;
}
dimension: PLAN_DESCRIPTION {
 type: string
 sql: ${TABLE}.PLAN_DESCRIPTION;;
}
dimension: MARKET_TYPE {
 type: string
 sql: ${TABLE}.MARKET_TYPE;;
}
dimension: CHANGE_DATE_START {
 type: string
 sql: ${TABLE}.CHANGE_DATE_START;;
}
dimension: CHANGE_DATE_END {
 type: string
 sql: ${TABLE}.CHANGE_DATE_END;;
}
dimension: CURRENT_RECORD_FLAG {
 type: string
 sql: ${TABLE}.CURRENT_RECORD_FLAG;;
}
dimension: DELETED_RECORD_FLAG {
 type: string
 sql: ${TABLE}.DELETED_RECORD_FLAG;;
}
}


view: fact_subscription_activity__73ff33cc_3f9c_4814_9059_6f1c2472ee0b {
sql_table_name:hive.s3media.fact_subscription_activity ;;
dimension: sbscrn_actvty_key {
 type: string
 sql: ${TABLE}.sbscrn_actvty_key;;
}
dimension: sbscrn_id {
 type: string
 sql: ${TABLE}.sbscrn_id;;
}
dimension: agn_key {
 type: string
 sql: ${TABLE}.agn_key;;
}
dimension: used_actvty_type_id {
 type: string
 sql: ${TABLE}.used_actvty_type_id;;
}
dimension: actvty_dt {
 type: string
 sql: ${TABLE}.actvty_dt;;
}
dimension: actvty_ts {
 type: string
 sql: ${TABLE}.actvty_ts;;
}
dimension: hhld_id {
 type: string
 sql: ${TABLE}.hhld_id;;
}
dimension: prty_key {
 type: string
 sql: ${TABLE}.prty_key;;
}
dimension: prty_id {
 type: string
 sql: ${TABLE}.prty_id;;
}
dimension: parnt_acct_key {
 type: string
 sql: ${TABLE}.parnt_acct_key;;
}
dimension: parnt_acct_id {
 type: string
 sql: ${TABLE}.parnt_acct_id;;
}
dimension: parnt_acct_num {
 type: string
 sql: ${TABLE}.parnt_acct_num;;
}
dimension: child_acct_key {
 type: string
 sql: ${TABLE}.child_acct_key;;
}
dimension: child_acct_id {
 type: string
 sql: ${TABLE}.child_acct_id;;
}
dimension: child_acct_num {
 type: string
 sql: ${TABLE}.child_acct_num;;
}
dimension: veh_key {
 type: string
 sql: ${TABLE}.veh_key;;
}
dimension: dvc_key {
 type: string
 sql: ${TABLE}.dvc_key;;
}
dimension: dvc_id {
 type: string
 sql: ${TABLE}.dvc_id;;
}
dimension: eqmnt_key {
 type: string
 sql: ${TABLE}.eqmnt_key;;
}
dimension: eqmnt_id {
 type: string
 sql: ${TABLE}.eqmnt_id;;
}
dimension: plan_key {
 type: string
 sql: ${TABLE}.plan_key;;
}
dimension: plan_id {
 type: string
 sql: ${TABLE}.plan_id;;
}
dimension: ofr_id {
 type: string
 sql: ${TABLE}.ofr_id;;
}
dimension: from_plan_key {
 type: string
 sql: ${TABLE}.from_plan_key;;
}
dimension: from_plan_id {
 type: string
 sql: ${TABLE}.from_plan_id;;
}
dimension: from_ofr_id {
 type: string
 sql: ${TABLE}.from_ofr_id;;
}
dimension: prod_key {
 type: string
 sql: ${TABLE}.prod_key;;
}
dimension: prod_id {
 type: string
 sql: ${TABLE}.prod_id;;
}
dimension: from_prod_key {
 type: string
 sql: ${TABLE}.from_prod_key;;
}
dimension: from_prod_id {
 type: string
 sql: ${TABLE}.from_prod_id;;
}
dimension: pkg_id {
 type: string
 sql: ${TABLE}.pkg_id;;
}
dimension: from_pkg_id {
 type: string
 sql: ${TABLE}.from_pkg_id;;
}
dimension: feat_id {
 type: string
 sql: ${TABLE}.feat_id;;
}
dimension: csr_id {
 type: string
 sql: ${TABLE}.csr_id;;
}
dimension: ptnr_id {
 type: string
 sql: ${TABLE}.ptnr_id;;
}
dimension: lnkd_inet_fl {
 type: string
 sql: ${TABLE}.lnkd_inet_fl;;
}
dimension: mrd_type_cd {
 type: string
 sql: ${TABLE}.mrd_type_cd;;
}
dimension: sbscr_lifcyc_key {
 type: string
 sql: ${TABLE}.sbscr_lifcyc_key;;
}
dimension: conv_rep_own_segmt_key {
 type: string
 sql: ${TABLE}.conv_rep_own_segmt_key;;
}
dimension: ownr_type2_key {
 type: string
 sql: ${TABLE}.ownr_type2_key;;
}
dimension: deactivation_reason_code {
 type: string
 sql: ${TABLE}.deactivation_reason_code;;
}
dimension: trial_id {
 type: string
 sql: ${TABLE}.trial_id;;
}
dimension: srvc_id {
 type: string
 sql: ${TABLE}.srvc_id;;
}
dimension: renw_id {
 type: string
 sql: ${TABLE}.renw_id;;
}
dimension: from_renw_id {
 type: string
 sql: ${TABLE}.from_renw_id;;
}
dimension: coll_scnro_id {
 type: string
 sql: ${TABLE}.coll_scnro_id;;
}
dimension: srvc_lvl_pmt_key {
 type: string
 sql: ${TABLE}.srvc_lvl_pmt_key;;
}
dimension: nonpay_srvc_key {
 type: string
 sql: ${TABLE}.nonpay_srvc_key;;
}
dimension: billing_method {
 type: string
 sql: ${TABLE}.billing_method;;
}
dimension: from_billing_method {
 type: string
 sql: ${TABLE}.from_billing_method;;
}
dimension: slfpay_turnover_rsn {
 type: string
 sql: ${TABLE}.slfpay_turnover_rsn;;
}
dimension: slfpay_turnover_dt {
 type: string
 sql: ${TABLE}.slfpay_turnover_dt;;
}
dimension: future_deactvn_dt {
 type: string
 sql: ${TABLE}.future_deactvn_dt;;
}
dimension: schd_seasonal_susp_reactvn_dt {
 type: string
 sql: ${TABLE}.schd_seasonal_susp_reactvn_dt;;
}
dimension: call_reason {
 type: string
 sql: ${TABLE}.call_reason;;
}
dimension: call_disposition {
 type: string
 sql: ${TABLE}.call_disposition;;
}
dimension: inse_user_id {
 type: string
 sql: ${TABLE}.inse_user_id;;
}
dimension: inse_ts {
 type: string
 sql: ${TABLE}.inse_ts;;
}
dimension: updt_user_id {
 type: string
 sql: ${TABLE}.updt_user_id;;
}
dimension: updt_ts {
 type: string
 sql: ${TABLE}.updt_ts;;
}
dimension: save_activity {
 type: string
 sql: ${TABLE}.save_activity;;
}
dimension: deact_activity_by_save_agent {
 type: string
 sql: ${TABLE}.deact_activity_by_save_agent;;
}
dimension: conversion_activity_by_save_agent {
 type: string
 sql: ${TABLE}.conversion_activity_by_save_agent;;
}
dimension: save_opportunity_activity {
 type: string
 sql: ${TABLE}.save_opportunity_activity;;
}
dimension: actvty_type_id {
 type: string
 sql: ${TABLE}.actvty_type_id;;
}
}


view: MASTER_PLAN_TABLE_WDATES__14ccc627_6529_4ea7_a038_f0d4dfd61002 {
sql_table_name:pm61oracle_media.RDSORACLEFORPRESTO.MASTER_PLAN_TABLE_WDATES ;;
dimension: PLAN_ID {
 type: string
 sql: ${TABLE}.PLAN_ID;;
}
dimension: PLAN_NAME {
 type: string
 sql: ${TABLE}.PLAN_NAME;;
}
dimension: MER {
 type: string
 sql: ${TABLE}.MER;;
}
dimension: DISC {
 type: string
 sql: ${TABLE}.DISC;;
}
dimension: PACKAGE {
 type: string
 sql: ${TABLE}.PACKAGE;;
}
dimension: LEN {
 type: string
 sql: ${TABLE}.LEN;;
}
dimension: ROLLUP1 {
 type: string
 sql: ${TABLE}.ROLLUP1;;
}
dimension: ASP {
 type: string
 sql: ${TABLE}.ASP;;
}
dimension: STARTDATE {
 type: string
 sql: ${TABLE}.STARTDATE;;
}
dimension: ENDDATE {
 type: string
 sql: ${TABLE}.ENDDATE;;
}
}