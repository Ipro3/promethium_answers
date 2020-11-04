
connection:"pmdevpresto"


explore: dim_device__054897af_fa31_4d39_a4a9_98da530fbbf3 {

join: DIM_AGENT__953e7fef_79ae_4761_8428_58597c702ba0 {
 type: inner
 relationship: many_to_one
 sql_on: ${dim_device__054897af_fa31_4d39_a4a9_98da530fbbf3.device_record_key} = ${DIM_AGENT__953e7fef_79ae_4761_8428_58597c702ba0.AGENT_RECORD_KEY} ;;
}
}


view: DIM_AGENT__953e7fef_79ae_4761_8428_58597c702ba0 {
sql_table_name:pm61_snowflake.SCHEMA_INFO.DIM_AGENT ;;
dimension: AGENT_RECORD_KEY {
 sql: ${TABLE}.AGENT_RECORD_KEY;;
}
dimension: AGENT_ID {
 sql: ${TABLE}.AGENT_ID;;
}
dimension: CSR_ID {
 sql: ${TABLE}.CSR_ID;;
}
dimension: AGENT_SUPERVISOR_RECORD_KEY {
 sql: ${TABLE}.AGENT_SUPERVISOR_RECORD_KEY;;
}
dimension: AGENT_SUPERVISOR_CSR_ID {
 sql: ${TABLE}.AGENT_SUPERVISOR_CSR_ID;;
}
dimension: AGENT_STATUS {
 sql: ${TABLE}.AGENT_STATUS;;
}
dimension: AGENT_ROLE_START_DATE {
 sql: ${TABLE}.AGENT_ROLE_START_DATE;;
}
dimension: AGENT_ROLE_END_DATE {
 sql: ${TABLE}.AGENT_ROLE_END_DATE;;
}
dimension: AGENT_ROLE_SMS {
 sql: ${TABLE}.AGENT_ROLE_SMS;;
}
dimension: AGENT_ROLE_MARKETING {
 sql: ${TABLE}.AGENT_ROLE_MARKETING;;
}
dimension: AGENT_LOCATION {
 sql: ${TABLE}.AGENT_LOCATION;;
}
dimension: AGENT_VENDOR {
 sql: ${TABLE}.AGENT_VENDOR;;
}
dimension: AGENT_SITE {
 sql: ${TABLE}.AGENT_SITE;;
}
dimension: AGENT_LOB {
 sql: ${TABLE}.AGENT_LOB;;
}
dimension: ACTIVATION_SOURCE {
 sql: ${TABLE}.ACTIVATION_SOURCE;;
}
dimension: CURRENT_RECORD_FLAG {
 sql: ${TABLE}.CURRENT_RECORD_FLAG;;
}
dimension: DELETED_RECORD_FLAG {
 sql: ${TABLE}.DELETED_RECORD_FLAG;;
}
dimension: COLUMN17 {
 sql: ${TABLE}.COLUMN17;;
}
measure: AGENT_ID_count {
type:count
 drill_fields: [detail*]
}
measure: AGENT_ID_sum {
type:sum
sql: ${AGENT_ID} ;;
 drill_fields: [detail*]
}
measure: AGENT_SUPERVISOR_RECORD_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: AGENT_SUPERVISOR_RECORD_KEY_sum {
type:sum
sql: ${AGENT_SUPERVISOR_RECORD_KEY} ;;
 drill_fields: [detail*]
}
set: detail {
fields: [AGENT_ID, CSR_ID, AGENT_SUPERVISOR_RECORD_KEY, AGENT_SUPERVISOR_CSR_ID, AGENT_STATUS, AGENT_ROLE_START_DATE, AGENT_ROLE_END_DATE, AGENT_ROLE_SMS, AGENT_ROLE_MARKETING, AGENT_LOCATION, AGENT_VENDOR, AGENT_SITE, AGENT_LOB, ACTIVATION_SOURCE, CURRENT_RECORD_FLAG, DELETED_RECORD_FLAG, COLUMN17]
}
}


view: dim_device__054897af_fa31_4d39_a4a9_98da530fbbf3 {
sql_table_name:hive.s3media.dim_device ;;
dimension: device_record_key {
 sql: ${TABLE}.device_record_key;;
}
dimension: device_id {
 sql: ${TABLE}.device_id;;
}
dimension: change_date_start {
 sql: ${TABLE}.change_date_start;;
}
dimension: change_date_end {
 sql: ${TABLE}.change_date_end;;
}
dimension: delivery_method {
 sql: ${TABLE}.delivery_method;;
}
dimension: brand {
 sql: ${TABLE}.brand;;
}
dimension: psn {
 sql: ${TABLE}.psn;;
}
dimension: partner_id {
 sql: ${TABLE}.partner_id;;
}
dimension: secondary_partner_id {
 sql: ${TABLE}.secondary_partner_id;;
}
dimension: vin {
 sql: ${TABLE}.vin;;
}
dimension: vehicle_id {
 sql: ${TABLE}.vehicle_id;;
}
dimension: equipment_key {
 sql: ${TABLE}.equipment_key;;
}
dimension: equipment_id {
 sql: ${TABLE}.equipment_id;;
}
dimension: capability_id {
 sql: ${TABLE}.capability_id;;
}
dimension: primary_dealer_id {
 sql: ${TABLE}.primary_dealer_id;;
}
dimension: secondary_dealer_id {
 sql: ${TABLE}.secondary_dealer_id;;
}
dimension: x65_flag {
 sql: ${TABLE}.x65_flag;;
}
dimension: vin_root {
 sql: ${TABLE}.vin_root;;
}
dimension: current_record_flag {
 sql: ${TABLE}.current_record_flag;;
}
dimension: deleted_record_flag {
 sql: ${TABLE}.deleted_record_flag;;
}
dimension: entertainment_system_code {
 sql: ${TABLE}.entertainment_system_code;;
}
dimension: vehicle_capability_id {
 sql: ${TABLE}.vehicle_capability_id;;
}
dimension: sbscrn_actvty_key {
 sql: ${TABLE}.sbscrn_actvty_key;;
}
dimension: sbscrn_id {
 sql: ${TABLE}.sbscrn_id;;
}
dimension: actvty_type_id {
 sql: ${TABLE}.actvty_type_id;;
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
dimension: agn_key {
 sql: ${TABLE}.agn_key;;
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
measure: equipment_id_count {
type:count
 drill_fields: [detail*]
}
measure: equipment_id_sum {
type:sum
sql: ${equipment_id} ;;
 drill_fields: [detail*]
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
fields: [device_id, change_date_start, change_date_end, delivery_method, brand, psn, vin, equipment_id, primary_dealer_id, secondary_dealer_id, x65_flag, vin_root, current_record_flag, deleted_record_flag, entertainment_system_code, used_actvty_type_id, actvty_dt, actvty_ts, parnt_acct_num, child_acct_num, eqmnt_id, ofr_id, from_plan_key, from_plan_id, from_ofr_id, from_prod_key, from_prod_id, pkg_id, from_pkg_id, csr_id, lnkd_inet_fl, mrd_type_cd, sbscr_lifcyc_key, deactivation_reason_code, from_renw_id, coll_scnro_id, srvc_lvl_pmt_key, nonpay_srvc_key, billing_method, from_billing_method, slfpay_turnover_rsn, slfpay_turnover_dt, future_deactvn_dt, schd_seasonal_susp_reactvn_dt, call_reason, call_disposition, inse_user_id, inse_ts, updt_user_id, updt_ts]
}
}