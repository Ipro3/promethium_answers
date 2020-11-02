
connection:"pmdevpresto"


explore: US_REGIONS__d3db455f_88a9_45fb_80df_2e3f3f746060 {

join: COMBINED_CRIME_INCIDENTS__7c940c87_897f_4835_a901_07ecd6717884 {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__d3db455f_88a9_45fb_80df_2e3f3f746060.REGION_CODE} > ${COMBINED_CRIME_INCIDENTS__7c940c87_897f_4835_a901_07ecd6717884.REGION_CODE} ;;
}
}


view: US_REGIONS__d3db455f_88a9_45fb_80df_2e3f3f746060 {
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


view: COMBINED_CRIME_INCIDENTS__7c940c87_897f_4835_a901_07ecd6717884 {
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