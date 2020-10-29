
connection:"pmdevpresto"


explore: US_REGIONS__53c30421_cd50_49ec_9a4f_df553717ec44 {

join: COMBINED_CRIME_INCIDENTS__e3348f85_f4da_4b7f_ab3c_a0d2611aeeb9 {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__53c30421_cd50_49ec_9a4f_df553717ec44.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__e3348f85_f4da_4b7f_ab3c_a0d2611aeeb9.REGION_CODE} ;;
}
}


view: COMBINED_CRIME_INCIDENTS__e3348f85_f4da_4b7f_ab3c_a0d2611aeeb9 {
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


view: US_REGIONS__53c30421_cd50_49ec_9a4f_df553717ec44 {
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