
connection:"testprod-2"


explore: MASTER_PLAN_TABLE_WDATES__fc6b60b3_2605_4196_b7ad_8be36dff1100 {

join: DIM_DEVICE__9bba7477_3c9c_48c2_bc30_67b9069209c9 {
 relationship: one_to_one
 sql_on: ${MASTER_PLAN_TABLE_WDATES__fc6b60b3_2605_4196_b7ad_8be36dff1100.STARTDATE} <= ${DIM_DEVICE__9bba7477_3c9c_48c2_bc30_67b9069209c9.CHANGE_DATE_START} ;;
}
}


view: DIM_DEVICE__9bba7477_3c9c_48c2_bc30_67b9069209c9 {
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
measure: SBSCRN_ACTVTY_KEY {
type:count_distinct
 sql: ${TABLE}.SBSCRN_ACTVTY_KEY;;
}
}


view: MASTER_PLAN_TABLE_WDATES__fc6b60b3_2605_4196_b7ad_8be36dff1100 {
sql_table_name:oracle.RDSORACLEFORPRESTO.MASTER_PLAN_TABLE_WDATES ;;
measure: PLAN_ID {
type:count_distinct
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