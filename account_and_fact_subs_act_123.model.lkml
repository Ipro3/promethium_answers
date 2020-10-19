
connection:"pmdevpresto"


explore: FACT_SUBSCRIPTION_ACTIVITY__a69fc8b8_31ae_446b_96ba_d495701db09a {

join: ACCOUNT__b66df304_a0d7_4f09_b547_548ac9a7810c {
 relationship: one_to_one
 sql_on: ${FACT_SUBSCRIPTION_ACTIVITY__a69fc8b8_31ae_446b_96ba_d495701db09a.USED_ACTVTY_TYPE_ID} = ${ACCOUNT__b66df304_a0d7_4f09_b547_548ac9a7810c.ACCOUNT_ID} ;;
}
}


view: ACCOUNT__b66df304_a0d7_4f09_b547_548ac9a7810c {
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


view: FACT_SUBSCRIPTION_ACTIVITY__a69fc8b8_31ae_446b_96ba_d495701db09a {
sql_table_name:pm61oracle_media.RDSORACLEFORPRESTO.FACT_SUBSCRIPTION_ACTIVITY ;;
dimension: SBSCRN_ACTVTY_KEY {
 type: string
 sql: ${TABLE}.SBSCRN_ACTVTY_KEY;;
}
dimension: SBSCRN_ID {
 type: string
 sql: ${TABLE}.SBSCRN_ID;;
}
dimension: AGN_KEY {
 type: string
 sql: ${TABLE}.AGN_KEY;;
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
dimension: PARNT_ACCT_KEY {
 type: string
 sql: ${TABLE}.PARNT_ACCT_KEY;;
}
dimension: PARNT_ACCT_ID {
 type: string
 sql: ${TABLE}.PARNT_ACCT_ID;;
}
dimension: PARNT_ACCT_NUM {
 type: string
 sql: ${TABLE}.PARNT_ACCT_NUM;;
}
dimension: CHILD_ACCT_KEY {
 type: string
 sql: ${TABLE}.CHILD_ACCT_KEY;;
}
dimension: CHILD_ACCT_ID {
 type: string
 sql: ${TABLE}.CHILD_ACCT_ID;;
}
dimension: CHILD_ACCT_NUM {
 type: string
 sql: ${TABLE}.CHILD_ACCT_NUM;;
}
dimension: VEH_KEY {
 type: string
 sql: ${TABLE}.VEH_KEY;;
}
dimension: DVC_KEY {
 type: string
 sql: ${TABLE}.DVC_KEY;;
}
dimension: DVC_ID {
 type: string
 sql: ${TABLE}.DVC_ID;;
}
dimension: EQMNT_KEY {
 type: string
 sql: ${TABLE}.EQMNT_KEY;;
}
dimension: EQMNT_ID {
 type: string
 sql: ${TABLE}.EQMNT_ID;;
}
dimension: PLAN_KEY {
 type: string
 sql: ${TABLE}.PLAN_KEY;;
}
dimension: PLAN_ID {
 type: string
 sql: ${TABLE}.PLAN_ID;;
}
dimension: OFR_ID {
 type: string
 sql: ${TABLE}.OFR_ID;;
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
dimension: PROD_KEY {
 type: string
 sql: ${TABLE}.PROD_KEY;;
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
dimension: FEAT_ID {
 type: string
 sql: ${TABLE}.FEAT_ID;;
}
dimension: AGN_KEY2 {
 type: string
 sql: ${TABLE}.AGN_KEY2;;
}
dimension: CSR_ID {
 type: string
 sql: ${TABLE}.CSR_ID;;
}
dimension: PTNR_ID {
 type: string
 sql: ${TABLE}.PTNR_ID;;
}
dimension: LNKD_INET_FL {
 type: string
 sql: ${TABLE}.LNKD_INET_FL;;
}
dimension: MRD_TYPE_CD {
 type: string
 sql: ${TABLE}.MRD_TYPE_CD;;
}
dimension: SBSCR_LIFCYC_KEY {
 type: string
 sql: ${TABLE}.SBSCR_LIFCYC_KEY;;
}
dimension: CONV_REP_OWN_SEGMT_KEY {
 type: string
 sql: ${TABLE}.CONV_REP_OWN_SEGMT_KEY;;
}
dimension: OWNR_TYPE2_KEY {
 type: string
 sql: ${TABLE}.OWNR_TYPE2_KEY;;
}
dimension: DEACTIVATION_REASON_CODE {
 type: string
 sql: ${TABLE}.DEACTIVATION_REASON_CODE;;
}
dimension: TRIAL_ID {
 type: string
 sql: ${TABLE}.TRIAL_ID;;
}
dimension: SRVC_ID {
 type: string
 sql: ${TABLE}.SRVC_ID;;
}
dimension: RENW_ID {
 type: string
 sql: ${TABLE}.RENW_ID;;
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
dimension: CALL_REASON {
 type: string
 sql: ${TABLE}.CALL_REASON;;
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
dimension: SAVE_ACTIVITY {
 type: string
 sql: ${TABLE}.SAVE_ACTIVITY;;
}
dimension: DEACT_ACTIVITY_BY_SAVE_AGENT {
 type: string
 sql: ${TABLE}.DEACT_ACTIVITY_BY_SAVE_AGENT;;
}
dimension: CONV_ACTIVITY_BY_SAVE_AGENT {
 type: string
 sql: ${TABLE}.CONV_ACTIVITY_BY_SAVE_AGENT;;
}
dimension: SAVE_OPPORTUNITY_ACTIVITY {
 type: string
 sql: ${TABLE}.SAVE_OPPORTUNITY_ACTIVITY;;
}
}