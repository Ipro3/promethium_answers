
connection: "pmdevpresto"


explore: DIM_AGENT__6238364b_c025_40e0_8da6_e0fae5a55cf2 {

join: FACT_SUBSCRIPTION_ACTIVITY__e781343e_97b8_4812_8ed5_e04d1c40e3b2 {
 relationship: one_to_one
 sql_on: ${DIM_AGENT__6238364b_c025_40e0_8da6_e0fae5a55cf2.AGENT_RECORD_KEY} = ${FACT_SUBSCRIPTION_ACTIVITY__e781343e_97b8_4812_8ed5_e04d1c40e3b2.AGN_KEY} ;;
}
join: DIM_DEVICE__775bc081_4c8e_46c5_a681_5e0bd0e8c953 {
 relationship: one_to_one
 sql_on: ${DIM_DEVICE__775bc081_4c8e_46c5_a681_5e0bd0e8c953.SBSCRN_ACTVTY_KEY} = ${FACT_SUBSCRIPTION_ACTIVITY__e781343e_97b8_4812_8ed5_e04d1c40e3b2.SBSCRN_ACTVTY_KEY} ;;
}
join: MASTER_PLAN_TABLE_WDATES__fec3ace8_6307_494c_a152_83e120300d96 {
 relationship: one_to_one
 sql_on: ${MASTER_PLAN_TABLE_WDATES__fec3ace8_6307_494c_a152_83e120300d96.PLAN_ID} = ${FACT_SUBSCRIPTION_ACTIVITY__e781343e_97b8_4812_8ed5_e04d1c40e3b2.PLAN_ID} ;;
}
}


view: MASTER_PLAN_TABLE_WDATES__fec3ace8_6307_494c_a152_83e120300d96 {
sql_table_name:pm61oracle_media.RDSORACLEFORPRESTO.MASTER_PLAN_TABLE_WDATES ;;
measure: PLAN_ID {
 type: number
 sql: ${TABLE}.PLAN_ID;;
}
dimension: PLAN_NAME {
 type: string
 sql: ${TABLE}.PLAN_NAME;;
}
measure: MER {
 type: number
 sql: ${TABLE}.MER;;
}
dimension: DISC {
 type: string
 sql: ${TABLE}.DISC;;
}
dimension: PACKAGE {
 type: string
 sql: ${TABLE}.PACKAGE;;
}
dimension: LEN {
 type: string
 sql: ${TABLE}.LEN;;
}
dimension: ROLLUP1 {
 type: string
 sql: ${TABLE}.ROLLUP1;;
}
dimension: ASP {
 type: string
 sql: ${TABLE}.ASP;;
}
dimension: STARTDATE {
 type: string
 sql: ${TABLE}.STARTDATE;;
}
dimension: ENDDATE {
 type: string
 sql: ${TABLE}.ENDDATE;;
}
}


view: DIM_DEVICE__775bc081_4c8e_46c5_a681_5e0bd0e8c953 {
sql_table_name:pm61oracle_media.RDSORACLEFORPRESTO.DIM_DEVICE ;;
measure: DEVICE_RECORD_KEY {
 type: number
 sql: ${TABLE}.DEVICE_RECORD_KEY;;
}
dimension: DEVICE_ID {
 type: string
 sql: ${TABLE}.DEVICE_ID;;
}
dimension: CHANGE_DATE_START {
 type: string
 sql: ${TABLE}.CHANGE_DATE_START;;
}
dimension: CHANGE_DATE_END {
 type: string
 sql: ${TABLE}.CHANGE_DATE_END;;
}
dimension: DELIVERY_METHOD {
 type: string
 sql: ${TABLE}.DELIVERY_METHOD;;
}
dimension: BRAND {
 type: string
 sql: ${TABLE}.BRAND;;
}
dimension: PSN {
 type: string
 sql: ${TABLE}.PSN;;
}
measure: PARTNER_ID {
 type: number
 sql: ${TABLE}.PARTNER_ID;;
}
measure: SECONDARY_PARTNER_ID {
 type: number
 sql: ${TABLE}.SECONDARY_PARTNER_ID;;
}
dimension: VIN {
 type: string
 sql: ${TABLE}.VIN;;
}
measure: VEHICLE_ID {
 type: number
 sql: ${TABLE}.VEHICLE_ID;;
}
measure: EQUIPMENT_KEY {
 type: number
 sql: ${TABLE}.EQUIPMENT_KEY;;
}
measure: EQUIPMENT_ID {
 type: number
 sql: ${TABLE}.EQUIPMENT_ID;;
}
measure: CAPABILITY_ID {
 type: number
 sql: ${TABLE}.CAPABILITY_ID;;
}
dimension: PRIMARY_DEALER_ID {
 type: string
 sql: ${TABLE}.PRIMARY_DEALER_ID;;
}
dimension: SECONDARY_DEALER_ID {
 type: string
 sql: ${TABLE}.SECONDARY_DEALER_ID;;
}
dimension: X65_FLAG {
 type: string
 sql: ${TABLE}.X65_FLAG;;
}
dimension: VIN_ROOT {
 type: string
 sql: ${TABLE}.VIN_ROOT;;
}
dimension: CURRENT_RECORD_FLAG {
 type: string
 sql: ${TABLE}.CURRENT_RECORD_FLAG;;
}
dimension: DELETED_RECORD_FLAG {
 type: string
 sql: ${TABLE}.DELETED_RECORD_FLAG;;
}
dimension: ENTERTAINMENT_SYSTEM_CODE {
 type: string
 sql: ${TABLE}.ENTERTAINMENT_SYSTEM_CODE;;
}
measure: VEHICLE_CAPABILITY_ID {
 type: number
 sql: ${TABLE}.VEHICLE_CAPABILITY_ID;;
}
measure: SBSCRN_ACTVTY_KEY {
 type: number
 sql: ${TABLE}.SBSCRN_ACTVTY_KEY;;
}
}


view: FACT_SUBSCRIPTION_ACTIVITY__e781343e_97b8_4812_8ed5_e04d1c40e3b2 {
sql_table_name:pm61oracle_media.RDSORACLEFORPRESTO.FACT_SUBSCRIPTION_ACTIVITY ;;
measure: SBSCRN_ACTVTY_KEY {
 type: number
 sql: ${TABLE}.SBSCRN_ACTVTY_KEY;;
}
dimension: SBSCRN_ID {
 type: string
 sql: ${TABLE}.SBSCRN_ID;;
}
measure: AGN_KEY {
 type: number
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
measure: PARNT_ACCT_KEY {
 type: number
 sql: ${TABLE}.PARNT_ACCT_KEY;;
}
measure: PARNT_ACCT_ID {
 type: number
 sql: ${TABLE}.PARNT_ACCT_ID;;
}
dimension: PARNT_ACCT_NUM {
 type: string
 sql: ${TABLE}.PARNT_ACCT_NUM;;
}
measure: CHILD_ACCT_KEY {
 type: number
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
measure: VEH_KEY {
 type: number
 sql: ${TABLE}.VEH_KEY;;
}
measure: DVC_KEY {
 type: number
 sql: ${TABLE}.DVC_KEY;;
}
measure: DVC_ID {
 type: number
 sql: ${TABLE}.DVC_ID;;
}
measure: EQMNT_KEY {
 type: number
 sql: ${TABLE}.EQMNT_KEY;;
}
measure: EQMNT_ID {
 type: number
 sql: ${TABLE}.EQMNT_ID;;
}
measure: PLAN_KEY {
 type: number
 sql: ${TABLE}.PLAN_KEY;;
}
measure: PLAN_ID {
 type: number
 sql: ${TABLE}.PLAN_ID;;
}
measure: OFR_ID {
 type: number
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
measure: PROD_KEY {
 type: number
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
measure: FEAT_ID {
 type: number
 sql: ${TABLE}.FEAT_ID;;
}
measure: AGN_KEY2 {
 type: number
 sql: ${TABLE}.AGN_KEY2;;
}
dimension: CSR_ID {
 type: string
 sql: ${TABLE}.CSR_ID;;
}
measure: PTNR_ID {
 type: number
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
measure: SBSCR_LIFCYC_KEY {
 type: number
 sql: ${TABLE}.SBSCR_LIFCYC_KEY;;
}
measure: CONV_REP_OWN_SEGMT_KEY {
 type: number
 sql: ${TABLE}.CONV_REP_OWN_SEGMT_KEY;;
}
measure: OWNR_TYPE2_KEY {
 type: number
 sql: ${TABLE}.OWNR_TYPE2_KEY;;
}
dimension: DEACTIVATION_REASON_CODE {
 type: string
 sql: ${TABLE}.DEACTIVATION_REASON_CODE;;
}
measure: TRIAL_ID {
 type: number
 sql: ${TABLE}.TRIAL_ID;;
}
dimension: SRVC_ID {
 type: string
 sql: ${TABLE}.SRVC_ID;;
}
measure: RENW_ID {
 type: number
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
measure: CALL_REASON {
 type: number
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
measure: SAVE_ACTIVITY {
 type: number
 sql: ${TABLE}.SAVE_ACTIVITY;;
}
measure: DEACT_ACTIVITY_BY_SAVE_AGENT {
 type: number
 sql: ${TABLE}.DEACT_ACTIVITY_BY_SAVE_AGENT;;
}
measure: CONV_ACTIVITY_BY_SAVE_AGENT {
 type: number
 sql: ${TABLE}.CONV_ACTIVITY_BY_SAVE_AGENT;;
}
measure: SAVE_OPPORTUNITY_ACTIVITY {
 type: number
 sql: ${TABLE}.SAVE_OPPORTUNITY_ACTIVITY;;
}
}


view: DIM_AGENT__6238364b_c025_40e0_8da6_e0fae5a55cf2 {
sql_table_name:pm61oracle_media.RDSORACLEFORPRESTO.DIM_AGENT ;;
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