
connection:"presto-qa-1"


explore: DIM_AGENT__d0bf9910_f0c0_41ab_9c87_163d8dcf8a1c {

join: FACT_SUBSCRIPTION_ACTIVITY__2f3e767f_0167_4a70_9bf8_2aba43e9aabe {
 type: inner
 relationship: many_to_one
 sql_on: ${DIM_AGENT__d0bf9910_f0c0_41ab_9c87_163d8dcf8a1c.AGENT_RECORD_KEY} = ${FACT_SUBSCRIPTION_ACTIVITY__2f3e767f_0167_4a70_9bf8_2aba43e9aabe.AGN_KEY} ;;
}
join: MASTER_PLAN_TABLE_WDATES__d4be1c6d_4ce4_43fd_935c_e47a4d6928cf {
 type: inner
 relationship: many_to_one
 sql_on: ${MASTER_PLAN_TABLE_WDATES__d4be1c6d_4ce4_43fd_935c_e47a4d6928cf.PLAN_ID} = ${FACT_SUBSCRIPTION_ACTIVITY__2f3e767f_0167_4a70_9bf8_2aba43e9aabe.PLAN_ID} ;;
}
join: DIM_PLAN__3c860ad0_14bf_40d0_a802_5d4eb7208785 {
 type: inner
 relationship: many_to_one
 sql_on: ${DIM_PLAN__3c860ad0_14bf_40d0_a802_5d4eb7208785.PLAN_ID} = ${FACT_SUBSCRIPTION_ACTIVITY__2f3e767f_0167_4a70_9bf8_2aba43e9aabe.PLAN_ID} ;;
}
join: DIM_FEATURE__7c8c8440_9093_4b6c_a361_96e7cb29f273 {
 type: inner
 relationship: many_to_one
 sql_on: ${DIM_FEATURE__7c8c8440_9093_4b6c_a361_96e7cb29f273.FEATURE_ID} = ${FACT_SUBSCRIPTION_ACTIVITY__2f3e767f_0167_4a70_9bf8_2aba43e9aabe.FEAT_ID} ;;
}
join: DIM_CHANNEL__2a732cb5_f80f_4def_8207_c9c42a5a091d {
 type: inner
 relationship: many_to_one
 sql_on: ${DIM_CHANNEL__2a732cb5_f80f_4def_8207_c9c42a5a091d.CHANNEL_RECORD_KEY} = ${FACT_SUBSCRIPTION_ACTIVITY__2f3e767f_0167_4a70_9bf8_2aba43e9aabe.PARNT_ACCT_KEY} ;;
}
join: DIM_DEVICE__015d5001_491c_470e_904f_17c58ce7702f {
 type: inner
 relationship: many_to_one
 sql_on: ${DIM_DEVICE__015d5001_491c_470e_904f_17c58ce7702f.SBSCRN_ACTVTY_KEY} = ${FACT_SUBSCRIPTION_ACTIVITY__2f3e767f_0167_4a70_9bf8_2aba43e9aabe.SBSCRN_ACTVTY_KEY} ;;
}
join: DIM_REASONCODE__2b8d23db_ff29_48e7_8b8f_cb15bb94f58a {
 type: inner
 relationship: many_to_one
 sql_on: ${DIM_REASONCODE__2b8d23db_ff29_48e7_8b8f_cb15bb94f58a.REASONCODE} = ${FACT_SUBSCRIPTION_ACTIVITY__2f3e767f_0167_4a70_9bf8_2aba43e9aabe.CALL_REASON} ;;
}
}


view: DIM_FEATURE__7c8c8440_9093_4b6c_a361_96e7cb29f273 {
sql_table_name:oracle.RDSOracleForPresto.DIM_FEATURE ;;
dimension: FEATURE_ID {
  primary_key: yes
  sql: ${TABLE}.FEATURE_ID;;
}
dimension: FEATURE_NAME {
  sql: ${TABLE}.FEATURE_NAME;;
}
measure: FEATURE_ID_sum {
type:sum
sql: ${FEATURE_ID} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [FEATURE_ID, FEATURE_NAME]
}
}


view: DIM_CHANNEL__2a732cb5_f80f_4def_8207_c9c42a5a091d {
sql_table_name:oracle.RDSOracleForPresto.DIM_CHANNEL ;;
dimension: CHANNEL_RECORD_KEY {
  primary_key: yes
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
measure: CHANNEL_RECORD_KEY_sum {
type:sum
sql: ${CHANNEL_RECORD_KEY} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [CHANNEL_RECORD_KEY, PARTNERNAME, PARENTPARTNERNAME, CORP_ID, CATEGORYDESC, DISTRICTDESC, PARTNER_GROUP, PARTNER_IN_CONV_RATE, CHANGE_DATE_START, CHANGE_DATE_END, CURRENT_RECORD_FLAG, DELETED_RECORD_FLAG]
}
}


view: DIM_DEVICE__015d5001_491c_470e_904f_17c58ce7702f {
sql_table_name:oracle.RDSOracleForPresto.DIM_DEVICE ;;
dimension: DEVICE_RECORD_KEY {
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
dimension: PARTNER_ID {
  sql: ${TABLE}.PARTNER_ID;;
}
dimension: SECONDARY_PARTNER_ID {
  sql: ${TABLE}.SECONDARY_PARTNER_ID;;
}
dimension: VIN {
  sql: ${TABLE}.VIN;;
}
dimension: VEHICLE_ID {
  sql: ${TABLE}.VEHICLE_ID;;
}
dimension: EQUIPMENT_KEY {
  sql: ${TABLE}.EQUIPMENT_KEY;;
}
dimension: EQUIPMENT_ID {
  sql: ${TABLE}.EQUIPMENT_ID;;
}
dimension: CAPABILITY_ID {
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
dimension: VEHICLE_CAPABILITY_ID {
  sql: ${TABLE}.VEHICLE_CAPABILITY_ID;;
}
dimension: SBSCRN_ACTVTY_KEY {
  primary_key: yes
  sql: ${TABLE}.SBSCRN_ACTVTY_KEY;;
}
measure: DEVICE_RECORD_KEY_sum {
type:sum
sql: ${DEVICE_RECORD_KEY} ;;
 drill_fields: [detail*]
}
measure: PARTNER_ID_sum {
type:sum
sql: ${PARTNER_ID} ;;
 drill_fields: [detail*]
}
measure: SECONDARY_PARTNER_ID_sum {
type:sum
sql: ${SECONDARY_PARTNER_ID} ;;
 drill_fields: [detail*]
}
measure: VEHICLE_ID_sum {
type:sum
sql: ${VEHICLE_ID} ;;
 drill_fields: [detail*]
}
measure: EQUIPMENT_KEY_sum {
type:sum
sql: ${EQUIPMENT_KEY} ;;
 drill_fields: [detail*]
}
measure: EQUIPMENT_ID_sum {
type:sum
sql: ${EQUIPMENT_ID} ;;
 drill_fields: [detail*]
}
measure: CAPABILITY_ID_sum {
type:sum
sql: ${CAPABILITY_ID} ;;
 drill_fields: [detail*]
}
measure: VEHICLE_CAPABILITY_ID_sum {
type:sum
sql: ${VEHICLE_CAPABILITY_ID} ;;
 drill_fields: [detail*]
}
measure: SBSCRN_ACTVTY_KEY_sum {
type:sum
sql: ${SBSCRN_ACTVTY_KEY} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [DEVICE_RECORD_KEY, DEVICE_ID, CHANGE_DATE_START, CHANGE_DATE_END, DELIVERY_METHOD, BRAND, PSN, PARTNER_ID, SECONDARY_PARTNER_ID, VIN, VEHICLE_ID, EQUIPMENT_KEY, EQUIPMENT_ID, CAPABILITY_ID, PRIMARY_DEALER_ID, SECONDARY_DEALER_ID, X65_FLAG, VIN_ROOT, CURRENT_RECORD_FLAG, DELETED_RECORD_FLAG, ENTERTAINMENT_SYSTEM_CODE, VEHICLE_CAPABILITY_ID, SBSCRN_ACTVTY_KEY]
}
}


view: DIM_AGENT__d0bf9910_f0c0_41ab_9c87_163d8dcf8a1c {
sql_table_name:oracle.RDSOracleForPresto.DIM_AGENT ;;
dimension: AGENT_RECORD_KEY {
  primary_key: yes
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
measure: AGENT_RECORD_KEY_sum {
type:sum
sql: ${AGENT_RECORD_KEY} ;;
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
fields: [AGENT_RECORD_KEY, AGENT_ID, CSR_ID, AGENT_SUPERVISOR_RECORD_KEY, AGENT_SUPERVISOR_CSR_ID, AGENT_STATUS, AGENT_ROLE_START_DATE, AGENT_ROLE_END_DATE, AGENT_ROLE_SMS, AGENT_ROLE_MARKETING, AGENT_LOCATION, AGENT_VENDOR, AGENT_SITE, AGENT_LOB, ACTIVATION_SOURCE, CURRENT_RECORD_FLAG, DELETED_RECORD_FLAG]
}
}


view: MASTER_PLAN_TABLE_WDATES__d4be1c6d_4ce4_43fd_935c_e47a4d6928cf {
sql_table_name:oracle.RDSOracleForPresto.MASTER_PLAN_TABLE_WDATES ;;
dimension: PLAN_ID {
  primary_key: yes
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


view: DIM_REASONCODE__2b8d23db_ff29_48e7_8b8f_cb15bb94f58a {
sql_table_name:oracle.RDSOracleForPresto.DIM_REASONCODE ;;
dimension: REASONCODETYPE {
  sql: ${TABLE}.REASONCODETYPE;;
}
dimension: REASONCODE {
  primary_key: yes
  sql: ${TABLE}.REASONCODE;;
}
dimension: REASONNAME {
  sql: ${TABLE}.REASONNAME;;
}
dimension: REACTIVATION_INTERVAL {
  sql: ${TABLE}.REACTIVATION_INTERVAL;;
}
dimension: TEMP_DEACTIVATION_IND {
  sql: ${TABLE}.TEMP_DEACTIVATION_IND;;
}
dimension: TEMP_DEACTIVATION_INTERVAL {
  sql: ${TABLE}.TEMP_DEACTIVATION_INTERVAL;;
}
dimension: REASONNAMEROLLUP {
  sql: ${TABLE}.REASONNAMEROLLUP;;
}
dimension: REASON_CODE_GROUP {
  sql: ${TABLE}.REASON_CODE_GROUP;;
}
measure: REASONCODE_sum {
type:sum
sql: ${REASONCODE} ;;
 drill_fields: [detail*]
}
measure: REACTIVATION_INTERVAL_sum {
type:sum
sql: ${REACTIVATION_INTERVAL} ;;
 drill_fields: [detail*]
}
measure: TEMP_DEACTIVATION_INTERVAL_sum {
type:sum
sql: ${TEMP_DEACTIVATION_INTERVAL} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [REASONCODETYPE, REASONCODE, REASONNAME, REACTIVATION_INTERVAL, TEMP_DEACTIVATION_IND, TEMP_DEACTIVATION_INTERVAL, REASONNAMEROLLUP, REASON_CODE_GROUP]
}
}


view: DIM_PLAN__3c860ad0_14bf_40d0_a802_5d4eb7208785 {
sql_table_name:oracle.RDSOracleForPresto.DIM_PLAN ;;
dimension: PLAN_RECORD_KEY {
  sql: ${TABLE}.PLAN_RECORD_KEY;;
}
dimension: PLAN_ID {
  primary_key: yes
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
measure: PLAN_RECORD_KEY_sum {
type:sum
sql: ${PLAN_RECORD_KEY} ;;
 drill_fields: [detail*]
}
measure: PLAN_ID_sum {
type:sum
sql: ${PLAN_ID} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [PLAN_RECORD_KEY, PLAN_ID, PLAN_NAME, USED_FLAG, PLAN_DESCRIPTION, MARKET_TYPE, CHANGE_DATE_START, CHANGE_DATE_END, CURRENT_RECORD_FLAG, DELETED_RECORD_FLAG]
}
}


view: FACT_SUBSCRIPTION_ACTIVITY__2f3e767f_0167_4a70_9bf8_2aba43e9aabe {
sql_table_name:oracle.RDSOracleForPresto.FACT_SUBSCRIPTION_ACTIVITY ;;
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
dimension: AGN_KEY2 {
  sql: ${TABLE}.AGN_KEY2;;
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
dimension: CONV_ACTIVITY_BY_SAVE_AGENT {
  sql: ${TABLE}.CONV_ACTIVITY_BY_SAVE_AGENT;;
}
dimension: SAVE_OPPORTUNITY_ACTIVITY {
  sql: ${TABLE}.SAVE_OPPORTUNITY_ACTIVITY;;
}
measure: SBSCRN_ACTVTY_KEY_sum {
type:sum
sql: ${SBSCRN_ACTVTY_KEY} ;;
 drill_fields: [detail*]
}
measure: AGN_KEY_sum {
type:sum
sql: ${AGN_KEY} ;;
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
measure: FEAT_ID_sum {
type:sum
sql: ${FEAT_ID} ;;
 drill_fields: [detail*]
}
measure: AGN_KEY2_sum {
type:sum
sql: ${AGN_KEY2} ;;
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
measure: SAVE_ACTIVITY_sum {
type:sum
sql: ${SAVE_ACTIVITY} ;;
 drill_fields: [detail*]
}
measure: DEACT_ACTIVITY_BY_SAVE_AGENT_sum {
type:sum
sql: ${DEACT_ACTIVITY_BY_SAVE_AGENT} ;;
 drill_fields: [detail*]
}
measure: CONV_ACTIVITY_BY_SAVE_AGENT_sum {
type:sum
sql: ${CONV_ACTIVITY_BY_SAVE_AGENT} ;;
 drill_fields: [detail*]
}
measure: SAVE_OPPORTUNITY_ACTIVITY_sum {
type:sum
sql: ${SAVE_OPPORTUNITY_ACTIVITY} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [SBSCRN_ACTVTY_KEY, SBSCRN_ID, AGN_KEY, USED_ACTVTY_TYPE_ID, ACTVTY_DT, ACTVTY_TS, HHLD_ID, PRTY_KEY, PRTY_ID, PARNT_ACCT_KEY, PARNT_ACCT_ID, PARNT_ACCT_NUM, CHILD_ACCT_KEY, CHILD_ACCT_ID, CHILD_ACCT_NUM, VEH_KEY, DVC_KEY, DVC_ID, EQMNT_KEY, EQMNT_ID, PLAN_KEY, PLAN_ID, OFR_ID, FROM_PLAN_KEY, FROM_PLAN_ID, FROM_OFR_ID, PROD_KEY, PROD_ID, FROM_PROD_KEY, FROM_PROD_ID, PKG_ID, FROM_PKG_ID, FEAT_ID, AGN_KEY2, CSR_ID, PTNR_ID, LNKD_INET_FL, MRD_TYPE_CD, SBSCR_LIFCYC_KEY, CONV_REP_OWN_SEGMT_KEY, OWNR_TYPE2_KEY, DEACTIVATION_REASON_CODE, TRIAL_ID, SRVC_ID, RENW_ID, FROM_RENW_ID, COLL_SCNRO_ID, SRVC_LVL_PMT_KEY, NONPAY_SRVC_KEY, BILLING_METHOD, FROM_BILLING_METHOD, SLFPAY_TURNOVER_RSN, SLFPAY_TURNOVER_DT, FUTURE_DEACTVN_DT, SCHD_SEASONAL_SUSP_REACTVN_DT, CALL_REASON, CALL_DISPOSITION, INSE_USER_ID, INSE_TS, UPDT_USER_ID, UPDT_TS, SAVE_ACTIVITY, DEACT_ACTIVITY_BY_SAVE_AGENT, CONV_ACTIVITY_BY_SAVE_AGENT, SAVE_OPPORTUNITY_ACTIVITY]
}
}