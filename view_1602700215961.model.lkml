
connection:"pmdevpresto"


explore: FACT_SUBSCRIPTION_ACTIVITY__99550822_9d00_4fb2_abc4_350f4f88729d {

join: ACCOUNT__34563f04_1a6a_4641_be15_92e89bdd01da {
 relationship: one_to_one
 sql_on: ${FACT_SUBSCRIPTION_ACTIVITY__99550822_9d00_4fb2_abc4_350f4f88729d.USED_ACTVTY_TYPE_ID} = ${ACCOUNT__34563f04_1a6a_4641_be15_92e89bdd01da.ACCOUNT_ID} ;;
}
}


view: FACT_SUBSCRIPTION_ACTIVITY__99550822_9d00_4fb2_abc4_350f4f88729d {
sql_table_name:pm61oracle_media.RDSORACLEFORPRESTO.FACT_SUBSCRIPTION_ACTIVITY ;;
measure: SBSCRN_ACTVTY_KEY {
type:count_distinct
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
measure: PLAN_ID {
type:count_distinct
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


view: ACCOUNT__34563f04_1a6a_4641_be15_92e89bdd01da {
sql_table_name:pm61_snowflake.SCHEMA_INFO.ACCOUNT ;;
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