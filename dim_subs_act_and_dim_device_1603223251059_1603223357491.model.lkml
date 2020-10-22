
connection:"presto-qa-1"


explore: dim_subscription_activity__0fda5830_1738_4df9_ac81_3cbe1666edc6 {

join: DIM_DEVICE__3ffbfeac_6a61_44b5_a7f3_53756f99134f {
 relationship: one_to_one
 sql_on: ${dim_subscription_activity__0fda5830_1738_4df9_ac81_3cbe1666edc6.activity_type_id} = ${DIM_DEVICE__3ffbfeac_6a61_44b5_a7f3_53756f99134f.DEVICE_RECORD_KEY} 
 and ${dim_subscription_activity__0fda5830_1738_4df9_ac81_3cbe1666edc6.activity_type_code} <> ${DIM_DEVICE__3ffbfeac_6a61_44b5_a7f3_53756f99134f.PRIMARY_DEALER_ID} ;;
}
}


view: dim_subscription_activity__0fda5830_1738_4df9_ac81_3cbe1666edc6 {
sql_table_name:teratest.promethium.dim_subscription_activity ;;
dimension: activity_type_id {
 sql: ${TABLE}.activity_type_id;;
}
dimension: activity_type_code {
 sql: ${TABLE}.activity_type_code;;
}
dimension: purchase_activity_flag {
 sql: ${TABLE}.purchase_activity_flag;;
}
dimension: conversion_activity_flag {
 sql: ${TABLE}.conversion_activity_flag;;
}
dimension: plan_change_activity_flag {
 sql: ${TABLE}.plan_change_activity_flag;;
}
dimension: swap_flag {
 sql: ${TABLE}.swap_flag;;
}
dimension: activity_type_level01 {
 sql: ${TABLE}.activity_type_level01;;
}
}


view: DIM_DEVICE__3ffbfeac_6a61_44b5_a7f3_53756f99134f {
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