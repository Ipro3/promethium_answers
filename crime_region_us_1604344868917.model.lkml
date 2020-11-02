
connection:"pmdevpresto"


explore: US_REGIONS__39eb40d3_8e4c_41df_865f_80dcbde502eb {

join: COMBINED_CRIME_INCIDENTS__09770804_578b_40e7_b595_90a71a6e6e77 {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__39eb40d3_8e4c_41df_865f_80dcbde502eb.REGION_CODE} > ${COMBINED_CRIME_INCIDENTS__09770804_578b_40e7_b595_90a71a6e6e77.REGION_CODE} ;;
}
}


view: COMBINED_CRIME_INCIDENTS__09770804_578b_40e7_b595_90a71a6e6e77 {
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


view: US_REGIONS__39eb40d3_8e4c_41df_865f_80dcbde502eb {
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