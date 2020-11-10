
connection:"pmdevpresto"


explore: US_REGIONS__d163502e_39ca_4b92_9e5f_74ace811bb75 {

join: COMBINED_CRIME_INCIDENTS__e91562ae_c053_4e5b_a2f3_13f9801129a6 {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__d163502e_39ca_4b92_9e5f_74ace811bb75.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__e91562ae_c053_4e5b_a2f3_13f9801129a6.REGION_CODE} ;;
}
}


view: COMBINED_CRIME_INCIDENTS__e91562ae_c053_4e5b_a2f3_13f9801129a6 {
sql_table_name:mysql_v5.promethium.COMBINED_CRIME_INCIDENTS ;;
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
measure: REGION_CODE_sum {
type:sum
sql: ${REGION_CODE} ;;
 drill_fields: [detail*]
}
measure: COMBINED_CRIME_INCIDENTS_sum {
type:sum
sql: ${COMBINED_CRIME_INCIDENTS} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [SERIES_ID, REGION_CODE, COMBINED_CRIME_INCIDENTS, YEAR]
}
}


view: US_REGIONS__d163502e_39ca_4b92_9e5f_74ace811bb75 {
sql_table_name:mysql_v5.promethium.US_REGIONS ;;
dimension: REGION_CODE {
 sql: ${TABLE}.REGION_CODE;;
}
dimension: REGION_NAME {
 sql: ${TABLE}.REGION_NAME;;
}
dimension: US_STATE {
 sql: ${TABLE}.US_STATE;;
}
measure: REGION_CODE_sum {
type:sum
sql: ${REGION_CODE} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [REGION_CODE, REGION_NAME, US_STATE]
}
}