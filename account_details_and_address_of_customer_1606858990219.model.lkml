
connection:"pmdevpresto"


explore: ADDRESS__14657c18_6205_4bd4_8fe1_52bff2783d74 {

join: customer_dimension__ff15d9d4_fd8b_4707_ac7d_a38f6d424ae9 {
 relationship: one_to_one
 sql_on: ${ADDRESS__14657c18_6205_4bd4_8fe1_52bff2783d74.NUMBER_BUILDING} = ${customer_dimension__ff15d9d4_fd8b_4707_ac7d_a38f6d424ae9.customer_id} ;;
}
join: ACCOUNT__0a161b94_f6ba_4220_8cf7_4fd83bc97d54 {
 relationship: one_to_one
 sql_on: ${customer_dimension__ff15d9d4_fd8b_4707_ac7d_a38f6d424ae9.customer_name} = ${ACCOUNT__0a161b94_f6ba_4220_8cf7_4fd83bc97d54.ACCOUNT_ID} 
 and ${ADDRESS__14657c18_6205_4bd4_8fe1_52bff2783d74.NUMBER_STREET} = ${ACCOUNT__0a161b94_f6ba_4220_8cf7_4fd83bc97d54.ACCOUNT_ID} ;;
}
}


view: customer_dimension__ff15d9d4_fd8b_4707_ac7d_a38f6d424ae9 {
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


view: ADDRESS__14657c18_6205_4bd4_8fe1_52bff2783d74 {
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


view: ACCOUNT__0a161b94_f6ba_4220_8cf7_4fd83bc97d54 {
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