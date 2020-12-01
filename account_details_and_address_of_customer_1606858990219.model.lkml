
connection:"pmdevpresto"


explore: ADDRESS__d3567d66_7ac4_424c_83c7_c7301410fd88 {

join: customer_dimension__20c57c5b_377e_4f9d_af46_7d384352449a {
 relationship: one_to_one
 sql_on: ${ADDRESS__d3567d66_7ac4_424c_83c7_c7301410fd88.NUMBER_BUILDING} = ${customer_dimension__20c57c5b_377e_4f9d_af46_7d384352449a.customer_id} ;;
}
join: ACCOUNT__218016c2_095e_474d_9585_6826e0054c4a {
 relationship: one_to_one
 sql_on: ${customer_dimension__20c57c5b_377e_4f9d_af46_7d384352449a.customer_name} = ${ACCOUNT__218016c2_095e_474d_9585_6826e0054c4a.ACCOUNT_ID} 
 and ${ADDRESS__d3567d66_7ac4_424c_83c7_c7301410fd88.NUMBER_STREET} = ${ACCOUNT__218016c2_095e_474d_9585_6826e0054c4a.ACCOUNT_ID} ;;
}
}


view: ADDRESS__d3567d66_7ac4_424c_83c7_c7301410fd88 {
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


view: customer_dimension__20c57c5b_377e_4f9d_af46_7d384352449a {
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


view: ACCOUNT__218016c2_095e_474d_9585_6826e0054c4a {
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