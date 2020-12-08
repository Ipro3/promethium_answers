
connection:"testprod-2"


explore: DIM_AGENT__a30414db_6a60_4e16_afdb_807f509aab38 {

join: FACT_SUBSCRIPTION_ACTIVITY__23f21c8a_a83e_447b_991b_e58b6ac36eaf {
 relationship: one_to_one
 sql_on: ${DIM_AGENT__a30414db_6a60_4e16_afdb_807f509aab38.AGENT_RECORD_KEY} = ${FACT_SUBSCRIPTION_ACTIVITY__23f21c8a_a83e_447b_991b_e58b6ac36eaf.AGN_KEY} ;;
}
join: MASTER_PLAN_TABLE_WDATES__22367692_4ada_445c_b6dc_5305b421edc7 {
 relationship: one_to_one
 sql_on: ${MASTER_PLAN_TABLE_WDATES__22367692_4ada_445c_b6dc_5305b421edc7.PLAN_ID} = ${FACT_SUBSCRIPTION_ACTIVITY__23f21c8a_a83e_447b_991b_e58b6ac36eaf.PLAN_KEY} ;;
}
}


view: MASTER_PLAN_TABLE_WDATES__22367692_4ada_445c_b6dc_5305b421edc7 {
sql_table_name:oracle.RDSORACLEFORPRESTO.MASTER_PLAN_TABLE_WDATES ;;
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


view: FACT_SUBSCRIPTION_ACTIVITY__23f21c8a_a83e_447b_991b_e58b6ac36eaf {
sql_table_name:snowflake.SCHEMA_INFO.FACT_SUBSCRIPTION_ACTIVITY ;;
measure: SBSCRN_ACTVTY_KEY {
type:count_distinct
 sql: ${TABLE}.SBSCRN_ACTVTY_KEY;;
}
measure: SBSCRN_ID {
type:count_distinct
 sql: ${TABLE}.SBSCRN_ID;;
}
measure: ACTVTY_TYPE_ID {
type:count_distinct
 sql: ${TABLE}.ACTVTY_TYPE_ID;;
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
measure: HHLD_ID {
type:count_distinct
 sql: ${TABLE}.HHLD_ID;;
}
measure: PRTY_KEY {
type:count_distinct
 sql: ${TABLE}.PRTY_KEY;;
}
measure: PRTY_ID {
type:count_distinct
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
measure: CHILD_ACCT_ID {
type:count_distinct
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
dimension: PLAN_KEY {
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
measure: PROD_ID {
type:count_distinct
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
dimension: AGN_KEY {
 sql: ${TABLE}.AGN_KEY;;
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
measure: SRVC_ID {
type:count_distinct
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
dimension: SAVE_ACTIVITY {
 sql: ${TABLE}.SAVE_ACTIVITY;;
}
dimension: DEACT_ACTIVITY_BY_SAVE_AGENT {
 sql: ${TABLE}.DEACT_ACTIVITY_BY_SAVE_AGENT;;
}
dimension: CONVERSION_ACTIVITY_BY_SAVE_AGENT {
 sql: ${TABLE}.CONVERSION_ACTIVITY_BY_SAVE_AGENT;;
}
dimension: SAVE_OPPORTUNITY_ACTIVITY {
 sql: ${TABLE}.SAVE_OPPORTUNITY_ACTIVITY;;
}
}


view: DIM_AGENT__a30414db_6a60_4e16_afdb_807f509aab38 {
sql_table_name:snowflake.SCHEMA_INFO.DIM_AGENT ;;
dimension: AGENT_RECORD_KEY {
 sql: ${TABLE}.AGENT_RECORD_KEY;;
}
measure: AGENT_ID {
type:count_distinct
 sql: ${TABLE}.AGENT_ID;;
}
dimension: CSR_ID {
 sql: ${TABLE}.CSR_ID;;
}
measure: AGENT_SUPERVISOR_RECORD_KEY {
type:count_distinct
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
}