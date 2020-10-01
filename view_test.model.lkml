
connection: "pmdevpresto"


explore: dim_agent__dbbd0477_ffa7_4d25_a6e6_550c2e7fb6c2 {

join: dim_device__0b7578e4_b716_428f_a7f6_d6b480271842 {
 relationship: one_to_one
 sql_on: ${dim_agent__dbbd0477_ffa7_4d25_a6e6_550c2e7fb6c2.dim_agent.agent_record_key} = ${dim_device__0b7578e4_b716_428f_a7f6_d6b480271842.dim_device.device_record_key} ;;
}
join: dim_channel__2d8b57ea_243d_42f5_bab1_1d368594d615 {
 relationship: one_to_one
 sql_on: ${dim_agent__dbbd0477_ffa7_4d25_a6e6_550c2e7fb6c2.dim_agent.agent_record_key} = ${dim_channel__2d8b57ea_243d_42f5_bab1_1d368594d615.dim_channel.channel_record_key} ;;
}
}


view: dim_channel__2d8b57ea_243d_42f5_bab1_1d368594d615 {
sql_table_name:hive.s3media_old.dim_channel ;;
dimension: channel_record_key {
 type: string
 sql: ${TABLE}.channel_record_key;;
}
dimension: partnername {
 type: string
 sql: ${TABLE}.partnername;;
}
dimension: parentpartnername {
 type: string
 sql: ${TABLE}.parentpartnername;;
}
dimension: corp_id {
 type: string
 sql: ${TABLE}.corp_id;;
}
dimension: categorydesc {
 type: string
 sql: ${TABLE}.categorydesc;;
}
dimension: districtdesc {
 type: string
 sql: ${TABLE}.districtdesc;;
}
dimension: partner_group {
 type: string
 sql: ${TABLE}.partner_group;;
}
dimension: partner_in_conv_rate {
 type: string
 sql: ${TABLE}.partner_in_conv_rate;;
}
dimension: change_date_start {
 type: string
 sql: ${TABLE}.change_date_start;;
}
dimension: change_date_end {
 type: string
 sql: ${TABLE}.change_date_end;;
}
dimension: current_record_flag {
 type: string
 sql: ${TABLE}.current_record_flag;;
}
dimension: deleted_record_flag {
 type: string
 sql: ${TABLE}.deleted_record_flag;;
}
dimension: col12 {
 type: string
 sql: ${TABLE}.col12;;
}
dimension: col13 {
 type: string
 sql: ${TABLE}.col13;;
}
dimension: col14 {
 type: string
 sql: ${TABLE}.col14;;
}
dimension: col15 {
 type: string
 sql: ${TABLE}.col15;;
}
dimension: col16 {
 type: string
 sql: ${TABLE}.col16;;
}
dimension: col17 {
 type: string
 sql: ${TABLE}.col17;;
}
}


view: dim_device__0b7578e4_b716_428f_a7f6_d6b480271842 {
sql_table_name:hive.s3media_old.dim_device ;;
dimension: device_record_key {
 type: string
 sql: ${TABLE}.device_record_key;;
}
dimension: device_id {
 type: string
 sql: ${TABLE}.device_id;;
}
dimension: change_date_start {
 type: string
 sql: ${TABLE}.change_date_start;;
}
dimension: change_date_end {
 type: string
 sql: ${TABLE}.change_date_end;;
}
dimension: delivery_method {
 type: string
 sql: ${TABLE}.delivery_method;;
}
dimension: brand {
 type: string
 sql: ${TABLE}.brand;;
}
dimension: psn {
 type: string
 sql: ${TABLE}.psn;;
}
dimension: partner_id {
 type: string
 sql: ${TABLE}.partner_id;;
}
dimension: secondary_partner_id {
 type: string
 sql: ${TABLE}.secondary_partner_id;;
}
dimension: vin {
 type: string
 sql: ${TABLE}.vin;;
}
dimension: vehicle_id {
 type: string
 sql: ${TABLE}.vehicle_id;;
}
dimension: equipment_key {
 type: string
 sql: ${TABLE}.equipment_key;;
}
dimension: equipment_id {
 type: string
 sql: ${TABLE}.equipment_id;;
}
dimension: capability_id {
 type: string
 sql: ${TABLE}.capability_id;;
}
dimension: primary_dealer_id {
 type: string
 sql: ${TABLE}.primary_dealer_id;;
}
dimension: secondary_dealer_id {
 type: string
 sql: ${TABLE}.secondary_dealer_id;;
}
dimension: x65_flag {
 type: string
 sql: ${TABLE}.x65_flag;;
}
dimension: vin_root {
 type: string
 sql: ${TABLE}.vin_root;;
}
dimension: current_record_flag {
 type: string
 sql: ${TABLE}.current_record_flag;;
}
dimension: deleted_record_flag {
 type: string
 sql: ${TABLE}.deleted_record_flag;;
}
dimension: entertainment_system_code {
 type: string
 sql: ${TABLE}.entertainment_system_code;;
}
dimension: vehicle_capability_id {
 type: string
 sql: ${TABLE}.vehicle_capability_id;;
}
dimension: sbscrn_actvty_key {
 type: string
 sql: ${TABLE}.sbscrn_actvty_key;;
}
dimension: sbscrn_id {
 type: string
 sql: ${TABLE}.sbscrn_id;;
}
dimension: actvty_type_id {
 type: string
 sql: ${TABLE}.actvty_type_id;;
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
dimension: agn_key {
 type: string
 sql: ${TABLE}.agn_key;;
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
}


view: dim_agent__dbbd0477_ffa7_4d25_a6e6_550c2e7fb6c2 {
sql_table_name:hive.antonio.dim_agent ;;
dimension: agent_record_key {
 type: string
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
dimension: agent_supervisor_record_key {
 type: string
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
dimension: col17 {
 type: string
 sql: ${TABLE}.col17;;
}
}