
connection:"pmdevpresto"


explore: US_REGIONS__a98c0c89_cda5_4960_a582_72eb7cd801c8 {

join: COMBINED_CRIME_INCIDENTS__3523d8b2_edc1_4d07_84b8_3724f86c4cd4 {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__a98c0c89_cda5_4960_a582_72eb7cd801c8.REGION_CODE} > ${COMBINED_CRIME_INCIDENTS__3523d8b2_edc1_4d07_84b8_3724f86c4cd4.REGION_CODE} ;;
}
}


view: COMBINED_CRIME_INCIDENTS__3523d8b2_edc1_4d07_84b8_3724f86c4cd4 {
sql_table_name:mysql_v3.promethium.COMBINED_CRIME_INCIDENTS ;;
dimension: SERIES_ID {
 sql: ${TABLE}.SERIES_ID;;
}
dimension: REGION_CODE {
 sql: ${TABLE}.REGION_CODE;;
}
dimension: COMBINED_CRIME_INCIDENTS {
 sql: ${TABLE}.COMBINED_CRIME_INCIDENTS;;
}
dimension: YEAR {
 sql: ${TABLE}.YEAR;;
}
measure: COMBINED_CRIME_INCIDENTS_count {
type:count
 drill_fields: [detail*]
}
measure: COMBINED_CRIME_INCIDENTS_sum {
type:sum
sql: ${COMBINED_CRIME_INCIDENTS} ;;
 drill_fields: [detail*]
}
set: detail {
fields: [SERIES_ID, COMBINED_CRIME_INCIDENTS]
}
}


view: US_REGIONS__a98c0c89_cda5_4960_a582_72eb7cd801c8 {
sql_table_name:mysql_v3.promethium.US_REGIONS ;;
dimension: REGION_CODE {
 sql: ${TABLE}.REGION_CODE;;
}
dimension: REGION_NAME {
 sql: ${TABLE}.REGION_NAME;;
}
dimension: US_STATE {
 sql: ${TABLE}.US_STATE;;
}
}