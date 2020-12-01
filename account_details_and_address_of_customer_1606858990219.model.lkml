
connection:"pmdevpresto"


explore: ADDRESS__7d897ce2_d242_4108_9418_1fc6477c60de {

join: customer_dimension__aa6b5c32_badc_4a2f_bd32_b8b3ae121430 {
 relationship: one_to_one
 sql_on: ${ADDRESS__7d897ce2_d242_4108_9418_1fc6477c60de.NUMBER_BUILDING} = ${customer_dimension__aa6b5c32_badc_4a2f_bd32_b8b3ae121430.customer_id} ;;
}
join: ACCOUNT__c6ee3d14_d4a2_4316_aa79_3b5e41d81228 {
 relationship: one_to_one
 sql_on: ${customer_dimension__aa6b5c32_badc_4a2f_bd32_b8b3ae121430.customer_name} = ${ACCOUNT__c6ee3d14_d4a2_4316_aa79_3b5e41d81228.ACCOUNT_ID} 
 and ${ADDRESS__7d897ce2_d242_4108_9418_1fc6477c60de.NUMBER_STREET} = ${ACCOUNT__c6ee3d14_d4a2_4316_aa79_3b5e41d81228.ACCOUNT_ID} ;;
}
}


view: ACCOUNT__c6ee3d14_d4a2_4316_aa79_3b5e41d81228 {
sql_table_name:snowflake_media.SCHEMA_INFO.ACCOUNT ;;
dimension: ACCOUNT_ID {
 sql: ${TABLE}.ACCOUNT_ID;;
}
dimension: ACCOUNT_NAME {
 sql: ${TABLE}.ACCOUNT_NAME;;
}
dimension: DATE_OPENED {
 sql: ${TABLE}.DATE_OPENED;;
}
dimension: DATE_CLOSED {
 sql: ${TABLE}.DATE_CLOSED;;
}
dimension: CAUTION_TEXT {
 sql: ${TABLE}.CAUTION_TEXT;;
}
}


view: ADDRESS__7d897ce2_d242_4108_9418_1fc6477c60de {
sql_table_name:snowflake_media.SCHEMA_INFO.ADDRESS ;;
dimension: NUMBER_BUILDING {
 sql: ${TABLE}.NUMBER_BUILDING;;
}
measure: AREA_LOCALITY {
type:count_distinct
 sql: ${TABLE}.AREA_LOCALITY;;
}
measure: ADDRESS_ID {
type:count_distinct
 sql: ${TABLE}.ADDRESS_ID;;
}
dimension: NUMBER_STREET {
 sql: ${TABLE}.NUMBER_STREET;;
}
dimension: COUNTRY {
 sql: ${TABLE}.COUNTRY;;
}
dimension: CITY_TOWN {
 sql: ${TABLE}.CITY_TOWN;;
}
dimension: STATE_PROVINCE_COUNTY {
 sql: ${TABLE}.STATE_PROVINCE_COUNTY;;
}
dimension: OTHER_ADDRESS_DETAILS {
 sql: ${TABLE}.OTHER_ADDRESS_DETAILS;;
}
}


view: customer_dimension__aa6b5c32_badc_4a2f_bd32_b8b3ae121430 {
sql_table_name:test_mysql.promethium.customer_dimension ;;
dimension: customer_id {
 sql: ${TABLE}.customer_id;;
}
dimension: customer_name {
 sql: ${TABLE}.customer_name;;
}
dimension: customer_address {
 sql: ${TABLE}.customer_address;;
}
dimension: other_details {
 sql: ${TABLE}.other_details;;
}
}