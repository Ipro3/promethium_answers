
connection:"pmdevpresto"


explore: US_REGIONS__3b20755a_2132_4aae_ac3a_05aa33579155 {

join: COMBINED_CRIME_INCIDENTS__4fc339fc_a3e5_4cc2_865e_3ad5d239337a {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__3b20755a_2132_4aae_ac3a_05aa33579155.REGION_CODE} > ${COMBINED_CRIME_INCIDENTS__4fc339fc_a3e5_4cc2_865e_3ad5d239337a.REGION_CODE} ;;
}
}


view: US_REGIONS__3b20755a_2132_4aae_ac3a_05aa33579155 {
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


view: COMBINED_CRIME_INCIDENTS__4fc339fc_a3e5_4cc2_865e_3ad5d239337a {
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