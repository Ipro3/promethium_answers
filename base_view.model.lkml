
connection:"pmdevpresto"


explore: DIM_DEVICE__21d0bf81_a4df_423d_a96f_750d1a220c93 {

join: FACT_SUBSCRIPTION_ACTIVITY__6e29897e_a40f_43e3_812d_08d9dfeddcb0 {
 type: left_outer
 sql_on: ${DIM_DEVICE__21d0bf81_a4df_423d_a96f_750d1a220c93.SBSCRN_ACTVTY_KEY} = ${FACT_SUBSCRIPTION_ACTIVITY__6e29897e_a40f_43e3_812d_08d9dfeddcb0.SBSCRN_ACTVTY_KEY} ;;
}
join: MASTER_PLAN_TABLE_WDATES__35f8144d_6908_469c_9a29_52ac4aa1d059 {
 type: left_outer
 sql_on: ${MASTER_PLAN_TABLE_WDATES__35f8144d_6908_469c_9a29_52ac4aa1d059.PLAN_ID} >= ${FACT_SUBSCRIPTION_ACTIVITY__6e29897e_a40f_43e3_812d_08d9dfeddcb0.PLAN_ID} ;;
}
}


view: MASTER_PLAN_TABLE_WDATES__35f8144d_6908_469c_9a29_52ac4aa1d059 {
sql_table_name:pm61_snowflake.SCHEMA_INFO.MASTER_PLAN_TABLE_WDATES ;;
dimension: PLAN_ID {
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


view: FACT_SUBSCRIPTION_ACTIVITY__6e29897e_a40f_43e3_812d_08d9dfeddcb0 {
sql_table_name:pm61oracle_media.RDSORACLEFORPRESTO.FACT_SUBSCRIPTION_ACTIVITY ;;
dimension: SBSCRN_ACTVTY_KEY {
 sql: ${TABLE}.SBSCRN_ACTVTY_KEY;;
}
dimension: SBSCRN_ID {
 sql: ${TABLE}.SBSCRN_ID;;
}
measure: AGN_KEY {
type:count_distinct
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
measure: PARNT_ACCT_KEY {
type:count_distinct
 sql: ${TABLE}.PARNT_ACCT_KEY;;
}
measure: PARNT_ACCT_ID {
type:count_distinct
 sql: ${TABLE}.PARNT_ACCT_ID;;
}
dimension: PARNT_ACCT_NUM {
 sql: ${TABLE}.PARNT_ACCT_NUM;;
}
measure: CHILD_ACCT_KEY {
type:count_distinct
 sql: ${TABLE}.CHILD_ACCT_KEY;;
}
dimension: CHILD_ACCT_ID {
 sql: ${TABLE}.CHILD_ACCT_ID;;
}
dimension: CHILD_ACCT_NUM {
 sql: ${TABLE}.CHILD_ACCT_NUM;;
}
measure: VEH_KEY {
type:count_distinct
 sql: ${TABLE}.VEH_KEY;;
}
measure: DVC_KEY {
type:count_distinct
 sql: ${TABLE}.DVC_KEY;;
}
measure: DVC_ID {
type:count_distinct
 sql: ${TABLE}.DVC_ID;;
}
measure: EQMNT_KEY {
type:count_distinct
 sql: ${TABLE}.EQMNT_KEY;;
}
measure: EQMNT_ID {
type:count_distinct
 sql: ${TABLE}.EQMNT_ID;;
}
measure: PLAN_KEY {
type:count_distinct
 sql: ${TABLE}.PLAN_KEY;;
}
dimension: PLAN_ID {
 sql: ${TABLE}.PLAN_ID;;
}
measure: OFR_ID {
type:count_distinct
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
measure: PROD_KEY {
type:count_distinct
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
measure: FEAT_ID {
type:count_distinct
 sql: ${TABLE}.FEAT_ID;;
}
measure: AGN_KEY2 {
type:count_distinct
 sql: ${TABLE}.AGN_KEY2;;
}
dimension: CSR_ID {
 sql: ${TABLE}.CSR_ID;;
}
measure: PTNR_ID {
type:count_distinct
 sql: ${TABLE}.PTNR_ID;;
}
dimension: LNKD_INET_FL {
 sql: ${TABLE}.LNKD_INET_FL;;
}
dimension: MRD_TYPE_CD {
 sql: ${TABLE}.MRD_TYPE_CD;;
}
measure: SBSCR_LIFCYC_KEY {
type:count_distinct
 sql: ${TABLE}.SBSCR_LIFCYC_KEY;;
}
measure: CONV_REP_OWN_SEGMT_KEY {
type:count_distinct
 sql: ${TABLE}.CONV_REP_OWN_SEGMT_KEY;;
}
measure: OWNR_TYPE2_KEY {
type:count_distinct
 sql: ${TABLE}.OWNR_TYPE2_KEY;;
}
dimension: DEACTIVATION_REASON_CODE {
 sql: ${TABLE}.DEACTIVATION_REASON_CODE;;
}
measure: TRIAL_ID {
type:count_distinct
 sql: ${TABLE}.TRIAL_ID;;
}
dimension: SRVC_ID {
 sql: ${TABLE}.SRVC_ID;;
}
measure: RENW_ID {
type:count_distinct
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
measure: CALL_REASON {
type:count_distinct
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
measure: SAVE_ACTIVITY {
type:count_distinct
 sql: ${TABLE}.SAVE_ACTIVITY;;
}
measure: DEACT_ACTIVITY_BY_SAVE_AGENT {
type:count_distinct
 sql: ${TABLE}.DEACT_ACTIVITY_BY_SAVE_AGENT;;
}
measure: CONV_ACTIVITY_BY_SAVE_AGENT {
type:count_distinct
 sql: ${TABLE}.CONV_ACTIVITY_BY_SAVE_AGENT;;
}
measure: SAVE_OPPORTUNITY_ACTIVITY {
type:count_distinct
 sql: ${TABLE}.SAVE_OPPORTUNITY_ACTIVITY;;
}
}


view: DIM_DEVICE__21d0bf81_a4df_423d_a96f_750d1a220c93 {
sql_table_name:pm61_snowflake.SCHEMA_INFO.DIM_DEVICE ;;
measure: DEVICE_RECORD_KEY {
type:count_distinct
 sql: ${TABLE}.DEVICE_RECORD_KEY;;
}
dimension: DEVICE_ID {
 sql: ${TABLE}.DEVICE_ID;;
}
dimension: CHANGE_DATE_START {
 sql: ${TABLE}.CHANGE_DATE_START;;
}
dimension: CHANGE_DATE_END {
 sql: ${TABLE}.CHANGE_DATE_END;;
}
dimension: DELIVERY_METHOD {
 sql: ${TABLE}.DELIVERY_METHOD;;
}
dimension: BRAND {
 sql: ${TABLE}.BRAND;;
}
dimension: PSN {
 sql: ${TABLE}.PSN;;
}
measure: PARTNER_ID {
type:count_distinct
 sql: ${TABLE}.PARTNER_ID;;
}
measure: SECONDARY_PARTNER_ID {
type:count_distinct
 sql: ${TABLE}.SECONDARY_PARTNER_ID;;
}
dimension: VIN {
 sql: ${TABLE}.VIN;;
}
measure: VEHICLE_ID {
type:count_distinct
 sql: ${TABLE}.VEHICLE_ID;;
}
measure: EQUIPMENT_KEY {
type:count_distinct
 sql: ${TABLE}.EQUIPMENT_KEY;;
}
measure: EQUIPMENT_ID {
type:count_distinct
 sql: ${TABLE}.EQUIPMENT_ID;;
}
measure: CAPABILITY_ID {
type:count_distinct
 sql: ${TABLE}.CAPABILITY_ID;;
}
dimension: PRIMARY_DEALER_ID {
 sql: ${TABLE}.PRIMARY_DEALER_ID;;
}
dimension: SECONDARY_DEALER_ID {
 sql: ${TABLE}.SECONDARY_DEALER_ID;;
}
dimension: X65_FLAG {
 sql: ${TABLE}.X65_FLAG;;
}
dimension: VIN_ROOT {
 sql: ${TABLE}.VIN_ROOT;;
}
dimension: CURRENT_RECORD_FLAG {
 sql: ${TABLE}.CURRENT_RECORD_FLAG;;
}
dimension: DELETED_RECORD_FLAG {
 sql: ${TABLE}.DELETED_RECORD_FLAG;;
}
dimension: ENTERTAINMENT_SYSTEM_CODE {
 sql: ${TABLE}.ENTERTAINMENT_SYSTEM_CODE;;
}
measure: VEHICLE_CAPABILITY_ID {
type:count_distinct
 sql: ${TABLE}.VEHICLE_CAPABILITY_ID;;
}
dimension: SBSCRN_ACTVTY_KEY {
 sql: ${TABLE}.SBSCRN_ACTVTY_KEY;;
}
}