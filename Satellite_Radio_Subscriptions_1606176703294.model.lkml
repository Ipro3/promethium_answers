
connection:"testprod-2"


explore: DIM_DEVICE__ba434e67_7381_426d_b064_bbad64b72535 {

join: FACT_SUBSCRIPTION_ACTIVITY__2827687f_cac3_4e2f_af01_ffa75c919d61 {
 relationship: one_to_one
 sql_on: ${DIM_DEVICE__ba434e67_7381_426d_b064_bbad64b72535.SBSCRN_ACTVTY_KEY} = ${FACT_SUBSCRIPTION_ACTIVITY__2827687f_cac3_4e2f_af01_ffa75c919d61.SBSCRN_ACTVTY_KEY} ;;
}
join: DIM_USERS__243a66ad_ac2d_433c_80a3_624e676fbb1e {
 relationship: one_to_one
 sql_on: ${FACT_SUBSCRIPTION_ACTIVITY__2827687f_cac3_4e2f_af01_ffa75c919d61.ACTVTY_DT} = ${DIM_USERS__243a66ad_ac2d_433c_80a3_624e676fbb1e.ACTIVATION_DATE} ;;
}
join: DIM_PLAN__537723dc_65bc_4351_adf4_b106e8b85743 {
 relationship: one_to_one
 sql_on: ${DIM_PLAN__537723dc_65bc_4351_adf4_b106e8b85743.PLAN_ID} = ${FACT_SUBSCRIPTION_ACTIVITY__2827687f_cac3_4e2f_af01_ffa75c919d61.PLAN_ID} ;;
}
join: DIM_REASONCODE__0aa0e040_231b_4f1e_8598_5fa027025fab {
 relationship: one_to_one
 sql_on: ${DIM_REASONCODE__0aa0e040_231b_4f1e_8598_5fa027025fab.REASONCODE} = ${FACT_SUBSCRIPTION_ACTIVITY__2827687f_cac3_4e2f_af01_ffa75c919d61.CALL_REASON} ;;
}
join: DIM_AGENT__1db1df3b_1837_4d5a_8dc1_cfd8133fae4d {
 relationship: one_to_one
 sql_on: ${DIM_AGENT__1db1df3b_1837_4d5a_8dc1_cfd8133fae4d.AGENT_RECORD_KEY} = ${FACT_SUBSCRIPTION_ACTIVITY__2827687f_cac3_4e2f_af01_ffa75c919d61.AGN_KEY} ;;
}
join: DIM_FEATURE__514462a7_8fc2_42ba_a982_0279d7efe00b {
 relationship: one_to_one
 sql_on: ${DIM_FEATURE__514462a7_8fc2_42ba_a982_0279d7efe00b.FEATURE_ID} = ${FACT_SUBSCRIPTION_ACTIVITY__2827687f_cac3_4e2f_af01_ffa75c919d61.FEAT_ID} ;;
}
join: DIM_CHANNEL__eb63c253_cec9_41eb_be73_b7ece96a2996 {
 relationship: one_to_one
 sql_on: ${DIM_CHANNEL__eb63c253_cec9_41eb_be73_b7ece96a2996.CHANNEL_RECORD_KEY} = ${FACT_SUBSCRIPTION_ACTIVITY__2827687f_cac3_4e2f_af01_ffa75c919d61.PARNT_ACCT_KEY} ;;
}
join: MASTER_PLAN_TABLE_WDATES__f0ec2d79_eec2_4471_b962_9b0d8c0dcd37 {
 relationship: one_to_one
 sql_on: ${MASTER_PLAN_TABLE_WDATES__f0ec2d79_eec2_4471_b962_9b0d8c0dcd37.PLAN_ID} = ${FACT_SUBSCRIPTION_ACTIVITY__2827687f_cac3_4e2f_af01_ffa75c919d61.PLAN_ID} ;;
}
}


view: DIM_REASONCODE__0aa0e040_231b_4f1e_8598_5fa027025fab {
sql_table_name:oracle.RDSORACLEFORPRESTO.DIM_REASONCODE ;;
dimension: REASONCODETYPE {
 sql: ${TABLE}.REASONCODETYPE;;
}
dimension: REASONCODE {
 sql: ${TABLE}.REASONCODE;;
}
dimension: REASONNAME {
 sql: ${TABLE}.REASONNAME;;
}
measure: REACTIVATION_INTERVAL {
type:count_distinct
 sql: ${TABLE}.REACTIVATION_INTERVAL;;
}
dimension: TEMP_DEACTIVATION_IND {
 sql: ${TABLE}.TEMP_DEACTIVATION_IND;;
}
measure: TEMP_DEACTIVATION_INTERVAL {
type:count_distinct
 sql: ${TABLE}.TEMP_DEACTIVATION_INTERVAL;;
}
dimension: REASONNAMEROLLUP {
 sql: ${TABLE}.REASONNAMEROLLUP;;
}
dimension: REASON_CODE_GROUP {
 sql: ${TABLE}.REASON_CODE_GROUP;;
}
}


view: DIM_DEVICE__ba434e67_7381_426d_b064_bbad64b72535 {
sql_table_name:oracle.RDSORACLEFORPRESTO.DIM_DEVICE ;;
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


view: FACT_SUBSCRIPTION_ACTIVITY__2827687f_cac3_4e2f_af01_ffa75c919d61 {
sql_table_name:oracle.RDSORACLEFORPRESTO.FACT_SUBSCRIPTION_ACTIVITY ;;
dimension: SBSCRN_ACTVTY_KEY {
 sql: ${TABLE}.SBSCRN_ACTVTY_KEY;;
}
dimension: SBSCRN_ID {
 sql: ${TABLE}.SBSCRN_ID;;
}
dimension: AGN_KEY {
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
dimension: PARNT_ACCT_KEY {
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
dimension: FEAT_ID {
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


view: DIM_CHANNEL__eb63c253_cec9_41eb_be73_b7ece96a2996 {
sql_table_name:oracle.RDSORACLEFORPRESTO.DIM_CHANNEL ;;
dimension: CHANNEL_RECORD_KEY {
 sql: ${TABLE}.CHANNEL_RECORD_KEY;;
}
dimension: PARTNERNAME {
 sql: ${TABLE}.PARTNERNAME;;
}
dimension: PARENTPARTNERNAME {
 sql: ${TABLE}.PARENTPARTNERNAME;;
}
dimension: CORP_ID {
 sql: ${TABLE}.CORP_ID;;
}
dimension: CATEGORYDESC {
 sql: ${TABLE}.CATEGORYDESC;;
}
dimension: DISTRICTDESC {
 sql: ${TABLE}.DISTRICTDESC;;
}
dimension: PARTNER_GROUP {
 sql: ${TABLE}.PARTNER_GROUP;;
}
dimension: PARTNER_IN_CONV_RATE {
 sql: ${TABLE}.PARTNER_IN_CONV_RATE;;
}
dimension: CHANGE_DATE_START {
 sql: ${TABLE}.CHANGE_DATE_START;;
}
dimension: CHANGE_DATE_END {
 sql: ${TABLE}.CHANGE_DATE_END;;
}
dimension: CURRENT_RECORD_FLAG {
 sql: ${TABLE}.CURRENT_RECORD_FLAG;;
}
dimension: DELETED_RECORD_FLAG {
 sql: ${TABLE}.DELETED_RECORD_FLAG;;
}
}


view: DIM_USERS__243a66ad_ac2d_433c_80a3_624e676fbb1e {
sql_table_name:oracle.RDSORACLEFORPRESTO.DIM_USERS ;;
measure: DIM_USER_ID {
type:count_distinct
 sql: ${TABLE}.DIM_USER_ID;;
}
measure: CUSTOMER_ID {
type:count_distinct
 sql: ${TABLE}.CUSTOMER_ID;;
}
measure: USER_ID {
type:count_distinct
 sql: ${TABLE}.USER_ID;;
}
dimension: ACTIVATION_DATETIME {
 sql: ${TABLE}.ACTIVATION_DATETIME;;
}
dimension: ACTIVATION_DATE {
 sql: ${TABLE}.ACTIVATION_DATE;;
}
dimension: DEACTIVATION_DATE {
 sql: ${TABLE}.DEACTIVATION_DATE;;
}
dimension: BIRTH_DATE {
 sql: ${TABLE}.BIRTH_DATE;;
}
measure: SYSTEM_ACCOUNT_ID {
type:count_distinct
 sql: ${TABLE}.SYSTEM_ACCOUNT_ID;;
}
measure: IS_LATEST {
type:count_distinct
 sql: ${TABLE}.IS_LATEST;;
}
measure: DIM_HIGHVALUE_CATEGORY_ID {
type:count_distinct
 sql: ${TABLE}.DIM_HIGHVALUE_CATEGORY_ID;;
}
}


view: MASTER_PLAN_TABLE_WDATES__f0ec2d79_eec2_4471_b962_9b0d8c0dcd37 {
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


view: DIM_PLAN__537723dc_65bc_4351_adf4_b106e8b85743 {
sql_table_name:oracle.RDSORACLEFORPRESTO.DIM_PLAN ;;
measure: PLAN_RECORD_KEY {
type:count_distinct
 sql: ${TABLE}.PLAN_RECORD_KEY;;
}
dimension: PLAN_ID {
 sql: ${TABLE}.PLAN_ID;;
}
dimension: PLAN_NAME {
 sql: ${TABLE}.PLAN_NAME;;
}
dimension: USED_FLAG {
 sql: ${TABLE}.USED_FLAG;;
}
dimension: PLAN_DESCRIPTION {
 sql: ${TABLE}.PLAN_DESCRIPTION;;
}
dimension: MARKET_TYPE {
 sql: ${TABLE}.MARKET_TYPE;;
}
dimension: CHANGE_DATE_START {
 sql: ${TABLE}.CHANGE_DATE_START;;
}
dimension: CHANGE_DATE_END {
 sql: ${TABLE}.CHANGE_DATE_END;;
}
dimension: CURRENT_RECORD_FLAG {
 sql: ${TABLE}.CURRENT_RECORD_FLAG;;
}
dimension: DELETED_RECORD_FLAG {
 sql: ${TABLE}.DELETED_RECORD_FLAG;;
}
}


view: DIM_FEATURE__514462a7_8fc2_42ba_a982_0279d7efe00b {
sql_table_name:oracle.RDSORACLEFORPRESTO.DIM_FEATURE ;;
dimension: FEATURE_ID {
 sql: ${TABLE}.FEATURE_ID;;
}
dimension: FEATURE_NAME {
 sql: ${TABLE}.FEATURE_NAME;;
}
}


view: DIM_AGENT__1db1df3b_1837_4d5a_8dc1_cfd8133fae4d {
sql_table_name:oracle.RDSORACLEFORPRESTO.DIM_AGENT ;;
dimension: AGENT_RECORD_KEY {
 sql: ${TABLE}.AGENT_RECORD_KEY;;
}
dimension: AGENT_ID {
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
}