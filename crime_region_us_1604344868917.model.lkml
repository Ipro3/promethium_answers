
connection:"pmdevpresto"


explore: US_REGIONS__4b4a1e93_c50f_415c_9b7e_fe996a68a381 {

join: COMBINED_CRIME_INCIDENTS__10efceae_51c7_4e09_abe4_20d2f2c9e2c5 {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__4b4a1e93_c50f_415c_9b7e_fe996a68a381.REGION_CODE} > ${COMBINED_CRIME_INCIDENTS__10efceae_51c7_4e09_abe4_20d2f2c9e2c5.REGION_CODE} ;;
}
}


view: US_REGIONS__4b4a1e93_c50f_415c_9b7e_fe996a68a381 {
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


view: COMBINED_CRIME_INCIDENTS__10efceae_51c7_4e09_abe4_20d2f2c9e2c5 {
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