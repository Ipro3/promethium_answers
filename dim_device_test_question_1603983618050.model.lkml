
connection:"pmdevpresto"


explore: DIM_DEVICE__253ef1b8_853c_44c6_b00f_d4a20d15a524 {

}


view: DIM_DEVICE__253ef1b8_853c_44c6_b00f_d4a20d15a524 {
sql_table_name:pm61_snowflake.SCHEMA_INFO.DIM_DEVICE ;;
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
 sql: ${TABLE}.SBSCRN_ACTVTY_KEY;;
}
measure: DEVICE_RECORD_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: DEVICE_RECORD_KEY_sum {
type:sum
sql: ${DEVICE_RECORD_KEY} ;;
 drill_fields: [detail*]
}
measure: PARTNER_ID_count {
type:count
 drill_fields: [detail*]
}
measure: PARTNER_ID_sum {
type:sum
sql: ${PARTNER_ID} ;;
 drill_fields: [detail*]
}
measure: SECONDARY_PARTNER_ID_count {
type:count
 drill_fields: [detail*]
}
measure: SECONDARY_PARTNER_ID_sum {
type:sum
sql: ${SECONDARY_PARTNER_ID} ;;
 drill_fields: [detail*]
}
measure: VEHICLE_ID_count {
type:count
 drill_fields: [detail*]
}
measure: VEHICLE_ID_sum {
type:sum
sql: ${VEHICLE_ID} ;;
 drill_fields: [detail*]
}
measure: EQUIPMENT_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: EQUIPMENT_KEY_sum {
type:sum
sql: ${EQUIPMENT_KEY} ;;
 drill_fields: [detail*]
}
measure: EQUIPMENT_ID_count {
type:count
 drill_fields: [detail*]
}
measure: EQUIPMENT_ID_sum {
type:sum
sql: ${EQUIPMENT_ID} ;;
 drill_fields: [detail*]
}
measure: CAPABILITY_ID_count {
type:count
 drill_fields: [detail*]
}
measure: CAPABILITY_ID_sum {
type:sum
sql: ${CAPABILITY_ID} ;;
 drill_fields: [detail*]
}
measure: VEHICLE_CAPABILITY_ID_count {
type:count
 drill_fields: [detail*]
}
measure: VEHICLE_CAPABILITY_ID_sum {
type:sum
sql: ${VEHICLE_CAPABILITY_ID} ;;
 drill_fields: [detail*]
}
measure: SBSCRN_ACTVTY_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: SBSCRN_ACTVTY_KEY_sum {
type:sum
sql: ${SBSCRN_ACTVTY_KEY} ;;
 drill_fields: [detail*]
}
set: detail {
fields: [DEVICE_RECORD_KEY, DEVICE_ID, CHANGE_DATE_START, CHANGE_DATE_END, DELIVERY_METHOD, BRAND, PSN, PARTNER_ID, SECONDARY_PARTNER_ID, VIN, VEHICLE_ID, EQUIPMENT_KEY, EQUIPMENT_ID, CAPABILITY_ID, PRIMARY_DEALER_ID, SECONDARY_DEALER_ID, X65_FLAG, VIN_ROOT, CURRENT_RECORD_FLAG, DELETED_RECORD_FLAG, ENTERTAINMENT_SYSTEM_CODE, VEHICLE_CAPABILITY_ID, SBSCRN_ACTVTY_KEY]
}
}