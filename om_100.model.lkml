
connection: "pmdevpresto"


explore: DIM_AGENT__2ee5cddb_0473_4d30_850b_c5e654eb8819 {

join: FACT_SUBSCRIPTION_ACTIVITY__d1e83f3a_db19_432c_b1be_5d86399c7b9e {
 relationship: one_to_one
 sql_on: ${DIM_AGENT__2ee5cddb_0473_4d30_850b_c5e654eb8819.DIM_AGENT.AGENT_RECORD_KEY} > ${FACT_SUBSCRIPTION_ACTIVITY__d1e83f3a_db19_432c_b1be_5d86399c7b9e.FACT_SUBSCRIPTION_ACTIVITY.SBSCRN_ACTVTY_KEY} ;;
}
}


view: FACT_SUBSCRIPTION_ACTIVITY__d1e83f3a_db19_432c_b1be_5d86399c7b9e {
sql_table_name:ds_mysql.promethium.FACT_SUBSCRIPTION_ACTIVITY ;;
dimension: SBSCRN_ACTVTY_KEY {
 type: string
 sql: ${TABLE}.SBSCRN_ACTVTY_KEY;;
}
dimension: SBSCRN_ID {
 type: string
 sql: ${TABLE}.SBSCRN_ID;;
}
dimension: ACTVTY_TYPE_ID {
 type: string
 sql: ${TABLE}.ACTVTY_TYPE_ID;;
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
dimension: dvc_id {
 type: string
 sql: ${TABLE}.dvc_id;;
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
dimension: AGN_KEY {
 type: string
 sql: ${TABLE}.AGN_KEY;;
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
dimension: Call_Reason {
 type: string
 sql: ${TABLE}.Call_Reason;;
}
dimension: Call_Disposition {
 type: string
 sql: ${TABLE}.Call_Disposition;;
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
dimension: Save_Activity {
 type: string
 sql: ${TABLE}.Save_Activity;;
}
dimension: Deact_Activity_By_Save_Agent {
 type: string
 sql: ${TABLE}.Deact_Activity_By_Save_Agent;;
}
dimension: Conversion_Activity_By_Save_Agent {
 type: string
 sql: ${TABLE}.Conversion_Activity_By_Save_Agent;;
}
dimension: Save_Opportunity_Activity {
 type: string
 sql: ${TABLE}.Save_Opportunity_Activity;;
}
}


view: DIM_AGENT__2ee5cddb_0473_4d30_850b_c5e654eb8819 {
sql_table_name:oracle.RDSORACLEFORPRESTO.DIM_AGENT ;;
dimension: AGENT_RECORD_KEY {
 type: string
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
dimension: AGENT_SUPERVISOR_RECORD_KEY {
 type: string
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