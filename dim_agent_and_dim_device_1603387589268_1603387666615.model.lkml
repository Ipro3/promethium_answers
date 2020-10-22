
connection:"presto-qa-1"


explore: DIM_AGENT__209bf0a5_c89d_4818_885f_f5d0348d18f7 {

join: DIM_DEVICE__19018027_2a77_4f2d_99ef_46890c64811e {
 relationship: one_to_one
 sql_on: ${DIM_AGENT__209bf0a5_c89d_4818_885f_f5d0348d18f7.AGENT_RECORD_KEY} <> ${DIM_DEVICE__19018027_2a77_4f2d_99ef_46890c64811e.DEVICE_RECORD_KEY} ;;
}
}


view: DIM_DEVICE__19018027_2a77_4f2d_99ef_46890c64811e {
sql_table_name:oracle.RDSORACLEFORPRESTO.DIM_DEVICE ;;
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
measure: SBSCRN_ACTVTY_KEY {
type:count_distinct
 sql: ${TABLE}.SBSCRN_ACTVTY_KEY;;
}
}


view: DIM_AGENT__209bf0a5_c89d_4818_885f_f5d0348d18f7 {
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