
connection:"pmdevpresto"


explore: US_REGIONS__fc5c93b1_37f8_4726_a6c8_ed2d90e095cb {

join: COMBINED_CRIME_INCIDENTS__a7535d4d_3952_470b_9193_d0ce8cc5a1f3 {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__fc5c93b1_37f8_4726_a6c8_ed2d90e095cb.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__a7535d4d_3952_470b_9193_d0ce8cc5a1f3.REGION_CODE} ;;
}
}


view: COMBINED_CRIME_INCIDENTS__a7535d4d_3952_470b_9193_d0ce8cc5a1f3 {
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


view: US_REGIONS__fc5c93b1_37f8_4726_a6c8_ed2d90e095cb {
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