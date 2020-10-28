
connection:"pmdevpresto"


explore: FACT_SUBSCRIPTION_ACTIVITY__e61f2ce0_ec23_4977_92f9_513947aec02c {

join: MASTER_PLAN_TABLE_WDATES__65cbd6aa_11c7_4aa1_b0da_636b8cf15094 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${MASTER_PLAN_TABLE_WDATES__65cbd6aa_11c7_4aa1_b0da_636b8cf15094.PLAN_ID} = ${FACT_SUBSCRIPTION_ACTIVITY__e61f2ce0_ec23_4977_92f9_513947aec02c.PLAN_ID} ;;
}
join: dim_device__57067cc8_0a8d_4cad_a260_f7a9b8302c19 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${dim_device__57067cc8_0a8d_4cad_a260_f7a9b8302c19.device_record_key} = ${FACT_SUBSCRIPTION_ACTIVITY__e61f2ce0_ec23_4977_92f9_513947aec02c.DVC_KEY} ;;
}
join: DIM_AGENT__76c46eac_d926_49b6_8bfd_f741d95ea31b {
 type: left_outer
 relationship: many_to_one
 sql_on: ${FACT_SUBSCRIPTION_ACTIVITY__e61f2ce0_ec23_4977_92f9_513947aec02c.AGN_KEY} = ${DIM_AGENT__76c46eac_d926_49b6_8bfd_f741d95ea31b.AGENT_RECORD_KEY} ;;
}
}


view: dim_device__57067cc8_0a8d_4cad_a260_f7a9b8302c19 {
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


view: FACT_SUBSCRIPTION_ACTIVITY__e61f2ce0_ec23_4977_92f9_513947aec02c {
sql_table_name:pm61oracle_media.RDSORACLEFORPRESTO.FACT_SUBSCRIPTION_ACTIVITY ;;
dimension: SBSCRN_ACTVTY_KEY {
 sql: ${TABLE}.SBSCRN_ACTVTY_KEY;;
}
dimension: SBSCRN_ID {
 sql: ${TABLE}.SBSCRN_ID;;
}
dimension: AGN_KEY {
 sql: ${TABLE}.AGN_KEY;;
}
dimension: USED_ACTVTY_TYPE_ID {
 sql: ${TABLE}.USED_ACTVTY_TYPE_ID;;
}
dimension: ACTVTY_DT {
 sql: ${TABLE}.ACTVTY_DT;;
}
dimension: ACTVTY_TS {
 sql: ${TABLE}.ACTVTY_TS;;
}
dimension: HHLD_ID {
 sql: ${TABLE}.HHLD_ID;;
}
dimension: PRTY_KEY {
 sql: ${TABLE}.PRTY_KEY;;
}
dimension: PRTY_ID {
 sql: ${TABLE}.PRTY_ID;;
}
dimension: PARNT_ACCT_KEY {
 sql: ${TABLE}.PARNT_ACCT_KEY;;
}
dimension: PARNT_ACCT_ID {
 sql: ${TABLE}.PARNT_ACCT_ID;;
}
dimension: PARNT_ACCT_NUM {
 sql: ${TABLE}.PARNT_ACCT_NUM;;
}
dimension: CHILD_ACCT_KEY {
 sql: ${TABLE}.CHILD_ACCT_KEY;;
}
dimension: CHILD_ACCT_ID {
 sql: ${TABLE}.CHILD_ACCT_ID;;
}
dimension: CHILD_ACCT_NUM {
 sql: ${TABLE}.CHILD_ACCT_NUM;;
}
dimension: VEH_KEY {
 sql: ${TABLE}.VEH_KEY;;
}
dimension: DVC_KEY {
 sql: ${TABLE}.DVC_KEY;;
}
dimension: DVC_ID {
 sql: ${TABLE}.DVC_ID;;
}
dimension: EQMNT_KEY {
 sql: ${TABLE}.EQMNT_KEY;;
}
dimension: EQMNT_ID {
 sql: ${TABLE}.EQMNT_ID;;
}
dimension: PLAN_KEY {
 sql: ${TABLE}.PLAN_KEY;;
}
dimension: PLAN_ID {
 sql: ${TABLE}.PLAN_ID;;
}
dimension: OFR_ID {
 sql: ${TABLE}.OFR_ID;;
}
dimension: FROM_PLAN_KEY {
 sql: ${TABLE}.FROM_PLAN_KEY;;
}
dimension: FROM_PLAN_ID {
 sql: ${TABLE}.FROM_PLAN_ID;;
}
dimension: FROM_OFR_ID {
 sql: ${TABLE}.FROM_OFR_ID;;
}
dimension: PROD_KEY {
 sql: ${TABLE}.PROD_KEY;;
}
dimension: PROD_ID {
 sql: ${TABLE}.PROD_ID;;
}
dimension: FROM_PROD_KEY {
 sql: ${TABLE}.FROM_PROD_KEY;;
}
dimension: FROM_PROD_ID {
 sql: ${TABLE}.FROM_PROD_ID;;
}
dimension: PKG_ID {
 sql: ${TABLE}.PKG_ID;;
}
dimension: FROM_PKG_ID {
 sql: ${TABLE}.FROM_PKG_ID;;
}
dimension: FEAT_ID {
 sql: ${TABLE}.FEAT_ID;;
}
dimension: AGN_KEY2 {
 sql: ${TABLE}.AGN_KEY2;;
}
dimension: CSR_ID {
 sql: ${TABLE}.CSR_ID;;
}
dimension: PTNR_ID {
 sql: ${TABLE}.PTNR_ID;;
}
dimension: LNKD_INET_FL {
 sql: ${TABLE}.LNKD_INET_FL;;
}
dimension: MRD_TYPE_CD {
 sql: ${TABLE}.MRD_TYPE_CD;;
}
dimension: SBSCR_LIFCYC_KEY {
 sql: ${TABLE}.SBSCR_LIFCYC_KEY;;
}
dimension: CONV_REP_OWN_SEGMT_KEY {
 sql: ${TABLE}.CONV_REP_OWN_SEGMT_KEY;;
}
dimension: OWNR_TYPE2_KEY {
 sql: ${TABLE}.OWNR_TYPE2_KEY;;
}
dimension: DEACTIVATION_REASON_CODE {
 sql: ${TABLE}.DEACTIVATION_REASON_CODE;;
}
dimension: TRIAL_ID {
 sql: ${TABLE}.TRIAL_ID;;
}
dimension: SRVC_ID {
 sql: ${TABLE}.SRVC_ID;;
}
dimension: RENW_ID {
 sql: ${TABLE}.RENW_ID;;
}
dimension: FROM_RENW_ID {
 sql: ${TABLE}.FROM_RENW_ID;;
}
dimension: COLL_SCNRO_ID {
 sql: ${TABLE}.COLL_SCNRO_ID;;
}
dimension: SRVC_LVL_PMT_KEY {
 sql: ${TABLE}.SRVC_LVL_PMT_KEY;;
}
dimension: NONPAY_SRVC_KEY {
 sql: ${TABLE}.NONPAY_SRVC_KEY;;
}
dimension: BILLING_METHOD {
 sql: ${TABLE}.BILLING_METHOD;;
}
dimension: FROM_BILLING_METHOD {
 sql: ${TABLE}.FROM_BILLING_METHOD;;
}
dimension: SLFPAY_TURNOVER_RSN {
 sql: ${TABLE}.SLFPAY_TURNOVER_RSN;;
}
dimension: SLFPAY_TURNOVER_DT {
 sql: ${TABLE}.SLFPAY_TURNOVER_DT;;
}
dimension: FUTURE_DEACTVN_DT {
 sql: ${TABLE}.FUTURE_DEACTVN_DT;;
}
dimension: SCHD_SEASONAL_SUSP_REACTVN_DT {
 sql: ${TABLE}.SCHD_SEASONAL_SUSP_REACTVN_DT;;
}
dimension: CALL_REASON {
 sql: ${TABLE}.CALL_REASON;;
}
dimension: CALL_DISPOSITION {
 sql: ${TABLE}.CALL_DISPOSITION;;
}
dimension: INSE_USER_ID {
 sql: ${TABLE}.INSE_USER_ID;;
}
dimension: INSE_TS {
 sql: ${TABLE}.INSE_TS;;
}
dimension: UPDT_USER_ID {
 sql: ${TABLE}.UPDT_USER_ID;;
}
dimension: UPDT_TS {
 sql: ${TABLE}.UPDT_TS;;
}
dimension: SAVE_ACTIVITY {
 sql: ${TABLE}.SAVE_ACTIVITY;;
}
dimension: DEACT_ACTIVITY_BY_SAVE_AGENT {
 sql: ${TABLE}.DEACT_ACTIVITY_BY_SAVE_AGENT;;
}
dimension: CONV_ACTIVITY_BY_SAVE_AGENT {
 sql: ${TABLE}.CONV_ACTIVITY_BY_SAVE_AGENT;;
}
dimension: SAVE_OPPORTUNITY_ACTIVITY {
 sql: ${TABLE}.SAVE_OPPORTUNITY_ACTIVITY;;
}
measure: SBSCRN_ACTVTY_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: SBSCRN_ACTVTY_KEY_sum {
type:sum
sql: ${SBSCRN_ACTVTY_KEY} ;;
 drill_fields: [detail*]
}
measure: PARNT_ACCT_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: PARNT_ACCT_KEY_sum {
type:sum
sql: ${PARNT_ACCT_KEY} ;;
 drill_fields: [detail*]
}
measure: PARNT_ACCT_ID_count {
type:count
 drill_fields: [detail*]
}
measure: PARNT_ACCT_ID_sum {
type:sum
sql: ${PARNT_ACCT_ID} ;;
 drill_fields: [detail*]
}
measure: CHILD_ACCT_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: CHILD_ACCT_KEY_sum {
type:sum
sql: ${CHILD_ACCT_KEY} ;;
 drill_fields: [detail*]
}
measure: VEH_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: VEH_KEY_sum {
type:sum
sql: ${VEH_KEY} ;;
 drill_fields: [detail*]
}
measure: DVC_ID_count {
type:count
 drill_fields: [detail*]
}
measure: DVC_ID_sum {
type:sum
sql: ${DVC_ID} ;;
 drill_fields: [detail*]
}
measure: EQMNT_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: EQMNT_KEY_sum {
type:sum
sql: ${EQMNT_KEY} ;;
 drill_fields: [detail*]
}
measure: EQMNT_ID_count {
type:count
 drill_fields: [detail*]
}
measure: EQMNT_ID_sum {
type:sum
sql: ${EQMNT_ID} ;;
 drill_fields: [detail*]
}
measure: PLAN_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: PLAN_KEY_sum {
type:sum
sql: ${PLAN_KEY} ;;
 drill_fields: [detail*]
}
measure: OFR_ID_count {
type:count
 drill_fields: [detail*]
}
measure: OFR_ID_sum {
type:sum
sql: ${OFR_ID} ;;
 drill_fields: [detail*]
}
measure: PROD_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: PROD_KEY_sum {
type:sum
sql: ${PROD_KEY} ;;
 drill_fields: [detail*]
}
measure: FEAT_ID_count {
type:count
 drill_fields: [detail*]
}
measure: FEAT_ID_sum {
type:sum
sql: ${FEAT_ID} ;;
 drill_fields: [detail*]
}
measure: AGN_KEY2_count {
type:count
 drill_fields: [detail*]
}
measure: AGN_KEY2_sum {
type:sum
sql: ${AGN_KEY2} ;;
 drill_fields: [detail*]
}
measure: PTNR_ID_count {
type:count
 drill_fields: [detail*]
}
measure: PTNR_ID_sum {
type:sum
sql: ${PTNR_ID} ;;
 drill_fields: [detail*]
}
measure: SBSCR_LIFCYC_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: SBSCR_LIFCYC_KEY_sum {
type:sum
sql: ${SBSCR_LIFCYC_KEY} ;;
 drill_fields: [detail*]
}
measure: CONV_REP_OWN_SEGMT_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: CONV_REP_OWN_SEGMT_KEY_sum {
type:sum
sql: ${CONV_REP_OWN_SEGMT_KEY} ;;
 drill_fields: [detail*]
}
measure: OWNR_TYPE2_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: OWNR_TYPE2_KEY_sum {
type:sum
sql: ${OWNR_TYPE2_KEY} ;;
 drill_fields: [detail*]
}
measure: TRIAL_ID_count {
type:count
 drill_fields: [detail*]
}
measure: TRIAL_ID_sum {
type:sum
sql: ${TRIAL_ID} ;;
 drill_fields: [detail*]
}
measure: RENW_ID_count {
type:count
 drill_fields: [detail*]
}
measure: RENW_ID_sum {
type:sum
sql: ${RENW_ID} ;;
 drill_fields: [detail*]
}
measure: CALL_REASON_count {
type:count
 drill_fields: [detail*]
}
measure: CALL_REASON_sum {
type:sum
sql: ${CALL_REASON} ;;
 drill_fields: [detail*]
}
measure: SAVE_ACTIVITY_count {
type:count
 drill_fields: [detail*]
}
measure: SAVE_ACTIVITY_sum {
type:sum
sql: ${SAVE_ACTIVITY} ;;
 drill_fields: [detail*]
}
measure: DEACT_ACTIVITY_BY_SAVE_AGENT_count {
type:count
 drill_fields: [detail*]
}
measure: DEACT_ACTIVITY_BY_SAVE_AGENT_sum {
type:sum
sql: ${DEACT_ACTIVITY_BY_SAVE_AGENT} ;;
 drill_fields: [detail*]
}
measure: CONV_ACTIVITY_BY_SAVE_AGENT_count {
type:count
 drill_fields: [detail*]
}
measure: CONV_ACTIVITY_BY_SAVE_AGENT_sum {
type:sum
sql: ${CONV_ACTIVITY_BY_SAVE_AGENT} ;;
 drill_fields: [detail*]
}
measure: SAVE_OPPORTUNITY_ACTIVITY_count {
type:count
 drill_fields: [detail*]
}
measure: SAVE_OPPORTUNITY_ACTIVITY_sum {
type:sum
sql: ${SAVE_OPPORTUNITY_ACTIVITY} ;;
 drill_fields: [detail*]
}
set: detail {
fields: [SBSCRN_ACTVTY_KEY, SBSCRN_ID, USED_ACTVTY_TYPE_ID, ACTVTY_TS, HHLD_ID, PRTY_KEY, PRTY_ID, PARNT_ACCT_KEY, PARNT_ACCT_ID, PARNT_ACCT_NUM, CHILD_ACCT_KEY, CHILD_ACCT_ID, CHILD_ACCT_NUM, VEH_KEY, DVC_ID, EQMNT_KEY, EQMNT_ID, PLAN_KEY, OFR_ID, FROM_PLAN_KEY, FROM_PLAN_ID, FROM_OFR_ID, PROD_KEY, PROD_ID, FROM_PROD_KEY, FROM_PROD_ID, PKG_ID, FROM_PKG_ID, FEAT_ID, AGN_KEY2, CSR_ID, PTNR_ID, LNKD_INET_FL, MRD_TYPE_CD, SBSCR_LIFCYC_KEY, CONV_REP_OWN_SEGMT_KEY, OWNR_TYPE2_KEY, DEACTIVATION_REASON_CODE, TRIAL_ID, SRVC_ID, RENW_ID, FROM_RENW_ID, COLL_SCNRO_ID, SRVC_LVL_PMT_KEY, NONPAY_SRVC_KEY, BILLING_METHOD, FROM_BILLING_METHOD, SLFPAY_TURNOVER_RSN, SLFPAY_TURNOVER_DT, FUTURE_DEACTVN_DT, SCHD_SEASONAL_SUSP_REACTVN_DT, CALL_REASON, CALL_DISPOSITION, INSE_USER_ID, INSE_TS, UPDT_USER_ID, UPDT_TS, SAVE_ACTIVITY, DEACT_ACTIVITY_BY_SAVE_AGENT, CONV_ACTIVITY_BY_SAVE_AGENT, SAVE_OPPORTUNITY_ACTIVITY]
}
}


view: DIM_AGENT__76c46eac_d926_49b6_8bfd_f741d95ea31b {
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


view: MASTER_PLAN_TABLE_WDATES__65cbd6aa_11c7_4aa1_b0da_636b8cf15094 {
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