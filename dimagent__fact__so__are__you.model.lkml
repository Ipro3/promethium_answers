
connection: "pmdevpresto"


explore: fact_subscription_activity__600ca15e_3fc4_4e5c_b33a_360c98ab8737 {

join: dim_agent__06baa410_1b2e_4406_90b3_dd488dab4683 {
 relationship: one_to_one
 sql_on: ${fact_subscription_activity__600ca15e_3fc4_4e5c_b33a_360c98ab8737.sbscrn_actvty_key} = ${dim_agent__06baa410_1b2e_4406_90b3_dd488dab4683.agent_record_key} ;;
}
join: DIM_AGENT__7a1fe6a0_5fee_46a7_8ee0_d849bfd5c89d {
 relationship: one_to_one
 sql_on: ${fact_subscription_activity__600ca15e_3fc4_4e5c_b33a_360c98ab8737.agn_key} = ${DIM_AGENT__7a1fe6a0_5fee_46a7_8ee0_d849bfd5c89d.AGENT_RECORD_KEY} ;;
}
}


view: fact_subscription_activity__600ca15e_3fc4_4e5c_b33a_360c98ab8737 {
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


view: DIM_AGENT__7a1fe6a0_5fee_46a7_8ee0_d849bfd5c89d {
sql_table_name:dd2.RDSORACLEFORPRESTO.DIM_AGENT ;;
measure: AGENT_RECORD_KEY {
 type: number
 sql: ${TABLE}.AGENT_RECORD_KEY;;
}
dimension: AGENT_ID {
 type: string
 sql: ${TABLE}.AGENT_ID;;
}
dimension: CSR_ID {
 type: string
 sql: ${TABLE}.CSR_ID;;
}
measure: AGENT_SUPERVISOR_RECORD_KEY {
 type: number
 sql: ${TABLE}.AGENT_SUPERVISOR_RECORD_KEY;;
}
dimension: AGENT_SUPERVISOR_CSR_ID {
 type: string
 sql: ${TABLE}.AGENT_SUPERVISOR_CSR_ID;;
}
dimension: AGENT_STATUS {
 type: string
 sql: ${TABLE}.AGENT_STATUS;;
}
dimension: AGENT_ROLE_START_DATE {
 type: string
 sql: ${TABLE}.AGENT_ROLE_START_DATE;;
}
dimension: AGENT_ROLE_END_DATE {
 type: string
 sql: ${TABLE}.AGENT_ROLE_END_DATE;;
}
dimension: AGENT_ROLE_SMS {
 type: string
 sql: ${TABLE}.AGENT_ROLE_SMS;;
}
dimension: AGENT_ROLE_MARKETING {
 type: string
 sql: ${TABLE}.AGENT_ROLE_MARKETING;;
}
dimension: AGENT_LOCATION {
 type: string
 sql: ${TABLE}.AGENT_LOCATION;;
}
dimension: AGENT_VENDOR {
 type: string
 sql: ${TABLE}.AGENT_VENDOR;;
}
dimension: AGENT_SITE {
 type: string
 sql: ${TABLE}.AGENT_SITE;;
}
dimension: AGENT_LOB {
 type: string
 sql: ${TABLE}.AGENT_LOB;;
}
dimension: ACTIVATION_SOURCE {
 type: string
 sql: ${TABLE}.ACTIVATION_SOURCE;;
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


view: dim_agent__06baa410_1b2e_4406_90b3_dd488dab4683 {
sql_table_name:hivepublic.promethium.dim_agent ;;
measure: agent_record_key {
 type: number
 sql: ${TABLE}.agent_record_key;;
}
dimension: agent_id {
 type: string
 sql: ${TABLE}.agent_id;;
}
dimension: csr_id {
 type: string
 sql: ${TABLE}.csr_id;;
}
measure: agent_supervisor_record_key {
 type: number
 sql: ${TABLE}.agent_supervisor_record_key;;
}
dimension: agent_supervisor_csr_id {
 type: string
 sql: ${TABLE}.agent_supervisor_csr_id;;
}
dimension: agent_status {
 type: string
 sql: ${TABLE}.agent_status;;
}
dimension: agent_role_start_date {
 type: string
 sql: ${TABLE}.agent_role_start_date;;
}
dimension: agent_role_end_date {
 type: string
 sql: ${TABLE}.agent_role_end_date;;
}
dimension: agent_role_sms {
 type: string
 sql: ${TABLE}.agent_role_sms;;
}
dimension: agent_role_marketing {
 type: string
 sql: ${TABLE}.agent_role_marketing;;
}
dimension: agent_location {
 type: string
 sql: ${TABLE}.agent_location;;
}
dimension: agent_vendor {
 type: string
 sql: ${TABLE}.agent_vendor;;
}
dimension: agent_site {
 type: string
 sql: ${TABLE}.agent_site;;
}
dimension: agent_lob {
 type: string
 sql: ${TABLE}.agent_lob;;
}
dimension: activation_source {
 type: string
 sql: ${TABLE}.activation_source;;
}
dimension: current_record_flag {
 type: string
 sql: ${TABLE}.current_record_flag;;
}
dimension: deleted_record_flag {
 type: string
 sql: ${TABLE}.deleted_record_flag;;
}
}