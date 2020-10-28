
connection:"pmdevpresto"


explore: fact_subscription_activity__1faeddd2_a1f5_4abe_90e5_7ecbb2cf5459 {

join: MASTER_PLAN_TABLE_WDATES__b0318a46_7908_4a5b_9bc6_212014290d37 {
 type: right_outer
 relationship: many_to_one
 sql_on: ${MASTER_PLAN_TABLE_WDATES__b0318a46_7908_4a5b_9bc6_212014290d37.PLAN_ID} = ${fact_subscription_activity__1faeddd2_a1f5_4abe_90e5_7ecbb2cf5459.plan_id} ;;
}
join: DIM_PLAN__9ec593fa_1986_4730_a6d6_5cc17ce25098 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${fact_subscription_activity__1faeddd2_a1f5_4abe_90e5_7ecbb2cf5459.plan_id} = ${DIM_PLAN__9ec593fa_1986_4730_a6d6_5cc17ce25098.PLAN_ID} ;;
}
}


view: MASTER_PLAN_TABLE_WDATES__b0318a46_7908_4a5b_9bc6_212014290d37 {
sql_table_name:pm61oracle_media.RDSORACLEFORPRESTO.MASTER_PLAN_TABLE_WDATES ;;
dimension: PLAN_ID {
 sql: ${TABLE}.PLAN_ID;;
}
dimension: PLAN_NAME {
 sql: ${TABLE}.PLAN_NAME;;
}
dimension: MER {
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
measure: MER_count {
type:count
 drill_fields: [detail*]
}
measure: MER_sum {
type:sum
sql: ${MER} ;;
 drill_fields: [detail*]
}
set: detail {
fields: [PLAN_NAME, MER, DISC, PACKAGE, LEN, ROLLUP1, ASP]
}
}


view: DIM_PLAN__9ec593fa_1986_4730_a6d6_5cc17ce25098 {
sql_table_name:pm61oracle_media.RDSORACLEFORPRESTO.DIM_PLAN ;;
dimension: PLAN_RECORD_KEY {
 sql: ${TABLE}.PLAN_RECORD_KEY;;
}
dimension: PLAN_ID {
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
measure: PLAN_RECORD_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: PLAN_RECORD_KEY_sum {
type:sum
sql: ${PLAN_RECORD_KEY} ;;
 drill_fields: [detail*]
}
set: detail {
fields: [PLAN_RECORD_KEY, PLAN_NAME, USED_FLAG, PLAN_DESCRIPTION, MARKET_TYPE, CURRENT_RECORD_FLAG, DELETED_RECORD_FLAG]
}
}


view: fact_subscription_activity__1faeddd2_a1f5_4abe_90e5_7ecbb2cf5459 {
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
dimension: eqmnt_id {
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
measure: eqmnt_id_count {
type:count
 drill_fields: [detail*]
}
measure: eqmnt_id_sum {
type:sum
sql: ${eqmnt_id} ;;
 drill_fields: [detail*]
}
set: detail {
fields: [sbscrn_id, used_actvty_type_id, actvty_dt, actvty_ts, hhld_id, prty_key, prty_id, parnt_acct_num, child_acct_id, child_acct_num, eqmnt_id, from_plan_key, from_plan_id, from_ofr_id, prod_id, from_prod_key, from_prod_id, pkg_id, from_pkg_id, csr_id, lnkd_inet_fl, mrd_type_cd, sbscr_lifcyc_key, deactivation_reason_code, srvc_id, from_renw_id, coll_scnro_id, srvc_lvl_pmt_key, nonpay_srvc_key, billing_method, from_billing_method, slfpay_turnover_rsn, slfpay_turnover_dt, future_deactvn_dt, schd_seasonal_susp_reactvn_dt, call_reason, call_disposition, inse_user_id, inse_ts, updt_user_id, updt_ts]
}
}