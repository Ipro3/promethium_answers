
connection:"pmdevpresto"


explore: FACT_SUBSCRIPTION_ACTIVITY__5c32c019_df08_40b1_bbb1_978715c7d3ec {

join: ACCOUNT__119abcb9_123b_428d_9354_00c170326402 {
 relationship: one_to_one
 sql_on: ${FACT_SUBSCRIPTION_ACTIVITY__5c32c019_df08_40b1_bbb1_978715c7d3ec.USED_ACTVTY_TYPE_ID} = ${ACCOUNT__119abcb9_123b_428d_9354_00c170326402.ACCOUNT_ID} ;;
}
}


view: ACCOUNT__119abcb9_123b_428d_9354_00c170326402 {
sql_table_name:pm61_snowflake.SCHEMA_INFO.ACCOUNT ;;
dimension: ACCOUNT_ID {
 type: string
 sql: ${TABLE}.ACCOUNT_ID;;
}
dimension: ACCOUNT_NAME {
 type: string
 sql: ${TABLE}.ACCOUNT_NAME;;
}
dimension: DATE_OPENED {
 type: string
 sql: ${TABLE}.DATE_OPENED;;
}
dimension: DATE_CLOSED {
 type: string
 sql: ${TABLE}.DATE_CLOSED;;
}
dimension: CAUTION_TEXT {
 type: string
 sql: ${TABLE}.CAUTION_TEXT;;
}
}


view: FACT_SUBSCRIPTION_ACTIVITY__5c32c019_df08_40b1_bbb1_978715c7d3ec {
sql_table_name:pm61oracle_media.RDSORACLEFORPRESTO.FACT_SUBSCRIPTION_ACTIVITY ;;
measure: SBSCRN_ACTVTY_KEY {
 type: count
}
dimension: SBSCRN_ID {
 type: string
 sql: ${TABLE}.SBSCRN_ID;;
}
measure: AGN_KEY {
 type: count
}
dimension: USED_ACTVTY_TYPE_ID {
 type: string
 sql: ${TABLE}.USED_ACTVTY_TYPE_ID;;
}
dimension: ACTVTY_DT {
 type: string
 sql: ${TABLE}.ACTVTY_DT;;
}
dimension: ACTVTY_TS {
 type: string
 sql: ${TABLE}.ACTVTY_TS;;
}
dimension: HHLD_ID {
 type: string
 sql: ${TABLE}.HHLD_ID;;
}
dimension: PRTY_KEY {
 type: string
 sql: ${TABLE}.PRTY_KEY;;
}
dimension: PRTY_ID {
 type: string
 sql: ${TABLE}.PRTY_ID;;
}
measure: PARNT_ACCT_KEY {
 type: count
}
measure: PARNT_ACCT_ID {
 type: count
}
dimension: PARNT_ACCT_NUM {
 type: string
 sql: ${TABLE}.PARNT_ACCT_NUM;;
}
measure: CHILD_ACCT_KEY {
 type: count
}
dimension: CHILD_ACCT_ID {
 type: string
 sql: ${TABLE}.CHILD_ACCT_ID;;
}
dimension: CHILD_ACCT_NUM {
 type: string
 sql: ${TABLE}.CHILD_ACCT_NUM;;
}
measure: VEH_KEY {
 type: count
}
measure: DVC_KEY {
 type: count
}
measure: DVC_ID {
 type: count
}
measure: EQMNT_KEY {
 type: count
}
measure: EQMNT_ID {
 type: count
}
measure: PLAN_KEY {
 type: count
}
measure: PLAN_ID {
 type: count
}
measure: OFR_ID {
 type: count
}
dimension: FROM_PLAN_KEY {
 type: string
 sql: ${TABLE}.FROM_PLAN_KEY;;
}
dimension: FROM_PLAN_ID {
 type: string
 sql: ${TABLE}.FROM_PLAN_ID;;
}
dimension: FROM_OFR_ID {
 type: string
 sql: ${TABLE}.FROM_OFR_ID;;
}
measure: PROD_KEY {
 type: count
}
dimension: PROD_ID {
 type: string
 sql: ${TABLE}.PROD_ID;;
}
dimension: FROM_PROD_KEY {
 type: string
 sql: ${TABLE}.FROM_PROD_KEY;;
}
dimension: FROM_PROD_ID {
 type: string
 sql: ${TABLE}.FROM_PROD_ID;;
}
dimension: PKG_ID {
 type: string
 sql: ${TABLE}.PKG_ID;;
}
dimension: FROM_PKG_ID {
 type: string
 sql: ${TABLE}.FROM_PKG_ID;;
}
measure: FEAT_ID {
 type: count
}
measure: AGN_KEY2 {
 type: count
}
dimension: CSR_ID {
 type: string
 sql: ${TABLE}.CSR_ID;;
}
measure: PTNR_ID {
 type: count
}
dimension: LNKD_INET_FL {
 type: string
 sql: ${TABLE}.LNKD_INET_FL;;
}
dimension: MRD_TYPE_CD {
 type: string
 sql: ${TABLE}.MRD_TYPE_CD;;
}
measure: SBSCR_LIFCYC_KEY {
 type: count
}
measure: CONV_REP_OWN_SEGMT_KEY {
 type: count
}
measure: OWNR_TYPE2_KEY {
 type: count
}
dimension: DEACTIVATION_REASON_CODE {
 type: string
 sql: ${TABLE}.DEACTIVATION_REASON_CODE;;
}
measure: TRIAL_ID {
 type: count
}
dimension: SRVC_ID {
 type: string
 sql: ${TABLE}.SRVC_ID;;
}
measure: RENW_ID {
 type: count
}
dimension: FROM_RENW_ID {
 type: string
 sql: ${TABLE}.FROM_RENW_ID;;
}
dimension: COLL_SCNRO_ID {
 type: string
 sql: ${TABLE}.COLL_SCNRO_ID;;
}
dimension: SRVC_LVL_PMT_KEY {
 type: string
 sql: ${TABLE}.SRVC_LVL_PMT_KEY;;
}
dimension: NONPAY_SRVC_KEY {
 type: string
 sql: ${TABLE}.NONPAY_SRVC_KEY;;
}
dimension: BILLING_METHOD {
 type: string
 sql: ${TABLE}.BILLING_METHOD;;
}
dimension: FROM_BILLING_METHOD {
 type: string
 sql: ${TABLE}.FROM_BILLING_METHOD;;
}
dimension: SLFPAY_TURNOVER_RSN {
 type: string
 sql: ${TABLE}.SLFPAY_TURNOVER_RSN;;
}
dimension: SLFPAY_TURNOVER_DT {
 type: string
 sql: ${TABLE}.SLFPAY_TURNOVER_DT;;
}
dimension: FUTURE_DEACTVN_DT {
 type: string
 sql: ${TABLE}.FUTURE_DEACTVN_DT;;
}
dimension: SCHD_SEASONAL_SUSP_REACTVN_DT {
 type: string
 sql: ${TABLE}.SCHD_SEASONAL_SUSP_REACTVN_DT;;
}
measure: CALL_REASON {
 type: count
}
dimension: CALL_DISPOSITION {
 type: string
 sql: ${TABLE}.CALL_DISPOSITION;;
}
dimension: INSE_USER_ID {
 type: string
 sql: ${TABLE}.INSE_USER_ID;;
}
dimension: INSE_TS {
 type: string
 sql: ${TABLE}.INSE_TS;;
}
dimension: UPDT_USER_ID {
 type: string
 sql: ${TABLE}.UPDT_USER_ID;;
}
dimension: UPDT_TS {
 type: string
 sql: ${TABLE}.UPDT_TS;;
}
measure: SAVE_ACTIVITY {
 type: count
}
measure: DEACT_ACTIVITY_BY_SAVE_AGENT {
 type: count
}
measure: CONV_ACTIVITY_BY_SAVE_AGENT {
 type: count
}
measure: SAVE_OPPORTUNITY_ACTIVITY {
 type: count
}
}