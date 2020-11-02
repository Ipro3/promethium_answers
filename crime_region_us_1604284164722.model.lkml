
connection:"pmdevpresto"


explore: US_REGIONS__de6d0aef_51f5_4246_a5dd_fd449d37220d {

join: COMBINED_CRIME_INCIDENTS__409cc462_0bd6_4387_b013_0a16e6c7e0ab {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__de6d0aef_51f5_4246_a5dd_fd449d37220d.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__409cc462_0bd6_4387_b013_0a16e6c7e0ab.REGION_CODE} ;;
}
}


view: COMBINED_CRIME_INCIDENTS__409cc462_0bd6_4387_b013_0a16e6c7e0ab {
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


view: US_REGIONS__de6d0aef_51f5_4246_a5dd_fd449d37220d {
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