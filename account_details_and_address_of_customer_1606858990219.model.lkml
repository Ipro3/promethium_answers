
connection:"pmdevpresto"


explore: ADDRESS__c82515de_7b61_48e2_a366_e71b2d00f207 {

join: customer_dimension__f1ccdc47_fafe_43b2_9faa_1301dd444d50 {
 relationship: one_to_one
 sql_on: ${ADDRESS__c82515de_7b61_48e2_a366_e71b2d00f207.NUMBER_BUILDING} = ${customer_dimension__f1ccdc47_fafe_43b2_9faa_1301dd444d50.customer_id} ;;
}
}


view: customer_dimension__f1ccdc47_fafe_43b2_9faa_1301dd444d50 {
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


view: ADDRESS__c82515de_7b61_48e2_a366_e71b2d00f207 {
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