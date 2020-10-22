
connection:"presto-qa-2"


explore: ACCOUNT__1ff17c2e_fe5b_40df_b47b_48d8ba4d0df0 {

join: fact_subscription_activity__63c70de2_239c_47da_adc8_23048ceb9c40 {
 relationship: one_to_one
 sql_on: ${ACCOUNT__1ff17c2e_fe5b_40df_b47b_48d8ba4d0df0.ACCOUNT_ID} = ${fact_subscription_activity__63c70de2_239c_47da_adc8_23048ceb9c40.sbscrn_id} ;;
}
}


view: fact_subscription_activity__63c70de2_239c_47da_adc8_23048ceb9c40 {
sql_table_name:hiveg3.promethium.fact_subscription_activity ;;
measure: sbscrn_actvty_key {
type:count_distinct
 sql: ${TABLE}.sbscrn_actvty_key;;
}
dimension: sbscrn_id {
 sql: ${TABLE}.sbscrn_id;;
}
measure: agn_key {
type:count_distinct
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
measure: parnt_acct_key {
type:count_distinct
 sql: ${TABLE}.parnt_acct_key;;
}
measure: parnt_acct_id {
type:count_distinct
 sql: ${TABLE}.parnt_acct_id;;
}
dimension: parnt_acct_num {
 sql: ${TABLE}.parnt_acct_num;;
}
measure: child_acct_key {
type:count_distinct
 sql: ${TABLE}.child_acct_key;;
}
dimension: child_acct_id {
 sql: ${TABLE}.child_acct_id;;
}
dimension: child_acct_num {
 sql: ${TABLE}.child_acct_num;;
}
measure: veh_key {
type:count_distinct
 sql: ${TABLE}.veh_key;;
}
measure: dvc_key {
type:count_distinct
 sql: ${TABLE}.dvc_key;;
}
measure: dvc_id {
type:count_distinct
 sql: ${TABLE}.dvc_id;;
}
measure: eqmnt_key {
type:count_distinct
 sql: ${TABLE}.eqmnt_key;;
}
measure: eqmnt_id {
type:count_distinct
 sql: ${TABLE}.eqmnt_id;;
}
measure: plan_key {
type:count_distinct
 sql: ${TABLE}.plan_key;;
}
measure: plan_id {
type:count_distinct
 sql: ${TABLE}.plan_id;;
}
measure: ofr_id {
type:count_distinct
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
measure: prod_key {
type:count_distinct
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
measure: feat_id {
type:count_distinct
 sql: ${TABLE}.feat_id;;
}
measure: agn_key2 {
type:count_distinct
 sql: ${TABLE}.agn_key2;;
}
dimension: csr_id {
 sql: ${TABLE}.csr_id;;
}
measure: ptnr_id {
type:count_distinct
 sql: ${TABLE}.ptnr_id;;
}
dimension: lnkd_inet_fl {
 sql: ${TABLE}.lnkd_inet_fl;;
}
dimension: mrd_type_cd {
 sql: ${TABLE}.mrd_type_cd;;
}
measure: sbscr_lifcyc_key {
type:count_distinct
 sql: ${TABLE}.sbscr_lifcyc_key;;
}
measure: conv_rep_own_segmt_key {
type:count_distinct
 sql: ${TABLE}.conv_rep_own_segmt_key;;
}
measure: ownr_type2_key {
type:count_distinct
 sql: ${TABLE}.ownr_type2_key;;
}
dimension: deactivation_reason_code {
 sql: ${TABLE}.deactivation_reason_code;;
}
measure: trial_id {
type:count_distinct
 sql: ${TABLE}.trial_id;;
}
dimension: srvc_id {
 sql: ${TABLE}.srvc_id;;
}
measure: renw_id {
type:count_distinct
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
measure: call_reason {
type:count_distinct
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
measure: save_activity {
type:count_distinct
 sql: ${TABLE}.save_activity;;
}
measure: deact_activity_by_save_agent {
type:count_distinct
 sql: ${TABLE}.deact_activity_by_save_agent;;
}
measure: conv_activity_by_save_agent {
type:count_distinct
 sql: ${TABLE}.conv_activity_by_save_agent;;
}
measure: save_opportunity_activity {
type:count_distinct
 sql: ${TABLE}.save_opportunity_activity;;
}
}


view: ACCOUNT__1ff17c2e_fe5b_40df_b47b_48d8ba4d0df0 {
sql_table_name:snowflakeg3.SCHEMA_INFO.ACCOUNT ;;
dimension: ACCOUNT_ID {
 sql: ${TABLE}.ACCOUNT_ID;;
}
dimension: ACCOUNT_NAME {
 sql: ${TABLE}.ACCOUNT_NAME;;
}
dimension: DATE_OPENED {
 sql: ${TABLE}.DATE_OPENED;;
}
dimension: DATE_CLOSED {
 sql: ${TABLE}.DATE_CLOSED;;
}
dimension: CAUTION_TEXT {
 sql: ${TABLE}.CAUTION_TEXT;;
}
}