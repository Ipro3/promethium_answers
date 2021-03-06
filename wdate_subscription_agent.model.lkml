
connection:"pmdevpresto"


explore: MASTER_PLAN_TABLE_WDATES__37b4e208_6cb2_481f_8cd7_9a9aadccfda0 {

join: FACT_SUBSCRIPTION_ACTIVITY__0f22cc50_0ad3_48a4_b6eb_16aa64b389c5 {
 type: inner
 relationship: many_to_one
 sql_on: ${MASTER_PLAN_TABLE_WDATES__37b4e208_6cb2_481f_8cd7_9a9aadccfda0.PLAN_ID} = ${FACT_SUBSCRIPTION_ACTIVITY__0f22cc50_0ad3_48a4_b6eb_16aa64b389c5.PLAN_ID} ;;
}
join: DIM_AGENT__f3cba123_fdf0_459e_8e8c_7828415a0631 {
 type: inner
 relationship: many_to_one
 sql_on: ${DIM_AGENT__f3cba123_fdf0_459e_8e8c_7828415a0631.AGENT_RECORD_KEY} = ${FACT_SUBSCRIPTION_ACTIVITY__0f22cc50_0ad3_48a4_b6eb_16aa64b389c5.AGN_KEY} ;;
}
}


view: FACT_SUBSCRIPTION_ACTIVITY__0f22cc50_0ad3_48a4_b6eb_16aa64b389c5 {
sql_table_name:snowflake.SCHEMA_INFO.FACT_SUBSCRIPTION_ACTIVITY ;;
dimension: SBSCRN_ACTVTY_KEY {
  sql: ${TABLE}.SBSCRN_ACTVTY_KEY;;
}
dimension: SBSCRN_ID {
  sql: ${TABLE}.SBSCRN_ID;;
}
dimension: ACTVTY_TYPE_ID {
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
dimension: AGN_KEY {
  sql: ${TABLE}.AGN_KEY;;
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
dimension: CONVERSION_ACTIVITY_BY_SAVE_AGENT {
  sql: ${TABLE}.CONVERSION_ACTIVITY_BY_SAVE_AGENT;;
}
dimension: SAVE_OPPORTUNITY_ACTIVITY {
  sql: ${TABLE}.SAVE_OPPORTUNITY_ACTIVITY;;
}
measure: SBSCRN_ACTVTY_KEY_sum {
type:sum
sql: ${SBSCRN_ACTVTY_KEY} ;;
 drill_fields: [detail*]
}
measure: SBSCRN_ID_sum {
type:sum
sql: ${SBSCRN_ID} ;;
 drill_fields: [detail*]
}
measure: ACTVTY_TYPE_ID_sum {
type:sum
sql: ${ACTVTY_TYPE_ID} ;;
 drill_fields: [detail*]
}
measure: HHLD_ID_sum {
type:sum
sql: ${HHLD_ID} ;;
 drill_fields: [detail*]
}
measure: PRTY_KEY_sum {
type:sum
sql: ${PRTY_KEY} ;;
 drill_fields: [detail*]
}
measure: PRTY_ID_sum {
type:sum
sql: ${PRTY_ID} ;;
 drill_fields: [detail*]
}
measure: PARNT_ACCT_KEY_sum {
type:sum
sql: ${PARNT_ACCT_KEY} ;;
 drill_fields: [detail*]
}
measure: PARNT_ACCT_ID_sum {
type:sum
sql: ${PARNT_ACCT_ID} ;;
 drill_fields: [detail*]
}
measure: CHILD_ACCT_KEY_sum {
type:sum
sql: ${CHILD_ACCT_KEY} ;;
 drill_fields: [detail*]
}
measure: CHILD_ACCT_ID_sum {
type:sum
sql: ${CHILD_ACCT_ID} ;;
 drill_fields: [detail*]
}
measure: VEH_KEY_sum {
type:sum
sql: ${VEH_KEY} ;;
 drill_fields: [detail*]
}
measure: DVC_KEY_sum {
type:sum
sql: ${DVC_KEY} ;;
 drill_fields: [detail*]
}
measure: DVC_ID_sum {
type:sum
sql: ${DVC_ID} ;;
 drill_fields: [detail*]
}
measure: EQMNT_KEY_sum {
type:sum
sql: ${EQMNT_KEY} ;;
 drill_fields: [detail*]
}
measure: EQMNT_ID_sum {
type:sum
sql: ${EQMNT_ID} ;;
 drill_fields: [detail*]
}
measure: PLAN_KEY_sum {
type:sum
sql: ${PLAN_KEY} ;;
 drill_fields: [detail*]
}
measure: PLAN_ID_sum {
type:sum
sql: ${PLAN_ID} ;;
 drill_fields: [detail*]
}
measure: OFR_ID_sum {
type:sum
sql: ${OFR_ID} ;;
 drill_fields: [detail*]
}
measure: PROD_KEY_sum {
type:sum
sql: ${PROD_KEY} ;;
 drill_fields: [detail*]
}
measure: PROD_ID_sum {
type:sum
sql: ${PROD_ID} ;;
 drill_fields: [detail*]
}
measure: FEAT_ID_sum {
type:sum
sql: ${FEAT_ID} ;;
 drill_fields: [detail*]
}
measure: AGN_KEY_sum {
type:sum
sql: ${AGN_KEY} ;;
 drill_fields: [detail*]
}
measure: PTNR_ID_sum {
type:sum
sql: ${PTNR_ID} ;;
 drill_fields: [detail*]
}
measure: SBSCR_LIFCYC_KEY_sum {
type:sum
sql: ${SBSCR_LIFCYC_KEY} ;;
 drill_fields: [detail*]
}
measure: CONV_REP_OWN_SEGMT_KEY_sum {
type:sum
sql: ${CONV_REP_OWN_SEGMT_KEY} ;;
 drill_fields: [detail*]
}
measure: OWNR_TYPE2_KEY_sum {
type:sum
sql: ${OWNR_TYPE2_KEY} ;;
 drill_fields: [detail*]
}
measure: TRIAL_ID_sum {
type:sum
sql: ${TRIAL_ID} ;;
 drill_fields: [detail*]
}
measure: SRVC_ID_sum {
type:sum
sql: ${SRVC_ID} ;;
 drill_fields: [detail*]
}
measure: RENW_ID_sum {
type:sum
sql: ${RENW_ID} ;;
 drill_fields: [detail*]
}
measure: CALL_REASON_sum {
type:sum
sql: ${CALL_REASON} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [SBSCRN_ACTVTY_KEY, SBSCRN_ID, ACTVTY_TYPE_ID, USED_ACTVTY_TYPE_ID, ACTVTY_DT, ACTVTY_TS, HHLD_ID, PRTY_KEY, PRTY_ID, PARNT_ACCT_KEY, PARNT_ACCT_ID, PARNT_ACCT_NUM, CHILD_ACCT_KEY, CHILD_ACCT_ID, CHILD_ACCT_NUM, VEH_KEY, DVC_KEY, DVC_ID, EQMNT_KEY, EQMNT_ID, PLAN_KEY, PLAN_ID, OFR_ID, FROM_PLAN_KEY, FROM_PLAN_ID, FROM_OFR_ID, PROD_KEY, PROD_ID, FROM_PROD_KEY, FROM_PROD_ID, PKG_ID, FROM_PKG_ID, FEAT_ID, AGN_KEY, CSR_ID, PTNR_ID, LNKD_INET_FL, MRD_TYPE_CD, SBSCR_LIFCYC_KEY, CONV_REP_OWN_SEGMT_KEY, OWNR_TYPE2_KEY, DEACTIVATION_REASON_CODE, TRIAL_ID, SRVC_ID, RENW_ID, FROM_RENW_ID, COLL_SCNRO_ID, SRVC_LVL_PMT_KEY, NONPAY_SRVC_KEY, BILLING_METHOD, FROM_BILLING_METHOD, SLFPAY_TURNOVER_RSN, SLFPAY_TURNOVER_DT, FUTURE_DEACTVN_DT, SCHD_SEASONAL_SUSP_REACTVN_DT, CALL_REASON, CALL_DISPOSITION, INSE_USER_ID, INSE_TS, UPDT_USER_ID, UPDT_TS, SAVE_ACTIVITY, DEACT_ACTIVITY_BY_SAVE_AGENT, CONVERSION_ACTIVITY_BY_SAVE_AGENT, SAVE_OPPORTUNITY_ACTIVITY]
}
}


view: MASTER_PLAN_TABLE_WDATES__37b4e208_6cb2_481f_8cd7_9a9aadccfda0 {
sql_table_name:snowflake.SCHEMA_INFO.MASTER_PLAN_TABLE_WDATES ;;
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
measure: PLAN_ID_sum {
type:sum
sql: ${PLAN_ID} ;;
 drill_fields: [detail*]
}
measure: MER_sum {
type:sum
sql: ${MER} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [PLAN_ID, PLAN_NAME, MER, DISC, PACKAGE, LEN, ROLLUP1, ASP, STARTDATE, ENDDATE]
}
}


view: DIM_AGENT__f3cba123_fdf0_459e_8e8c_7828415a0631 {
sql_table_name:snowflake.SCHEMA_INFO.DIM_AGENT ;;
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
measure: AGENT_RECORD_KEY_sum {
type:sum
sql: ${AGENT_RECORD_KEY} ;;
 drill_fields: [detail*]
}
measure: AGENT_ID_sum {
type:sum
sql: ${AGENT_ID} ;;
 drill_fields: [detail*]
}
measure: AGENT_SUPERVISOR_RECORD_KEY_sum {
type:sum
sql: ${AGENT_SUPERVISOR_RECORD_KEY} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [AGENT_RECORD_KEY, AGENT_ID, CSR_ID, AGENT_SUPERVISOR_RECORD_KEY, AGENT_SUPERVISOR_CSR_ID, AGENT_STATUS, AGENT_ROLE_START_DATE, AGENT_ROLE_END_DATE, AGENT_ROLE_SMS, AGENT_ROLE_MARKETING, AGENT_LOCATION, AGENT_VENDOR, AGENT_SITE, AGENT_LOB, ACTIVATION_SOURCE, CURRENT_RECORD_FLAG, DELETED_RECORD_FLAG, COLUMN17]
}
}