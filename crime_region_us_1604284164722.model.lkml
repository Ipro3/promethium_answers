
connection:"pmdevpresto"


explore: US_REGIONS__0066e4f8_a420_45e9_8223_c8d645e5046c {

join: COMBINED_CRIME_INCIDENTS__6339f561_a5b6_47bd_920c_adc4c31e1467 {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__0066e4f8_a420_45e9_8223_c8d645e5046c.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__6339f561_a5b6_47bd_920c_adc4c31e1467.REGION_CODE} ;;
}
}


view: COMBINED_CRIME_INCIDENTS__6339f561_a5b6_47bd_920c_adc4c31e1467 {
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


view: US_REGIONS__0066e4f8_a420_45e9_8223_c8d645e5046c {
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