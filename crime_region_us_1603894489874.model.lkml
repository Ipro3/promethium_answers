
connection:"pmdevpresto"


explore: US_REGIONS__7b45fd23_18d9_4a06_877e_0b3a2bc46c9f {

join: COMBINED_CRIME_INCIDENTS__09226311_fcff_44ac_a9d7_7b887e9f6410 {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__7b45fd23_18d9_4a06_877e_0b3a2bc46c9f.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__09226311_fcff_44ac_a9d7_7b887e9f6410.REGION_CODE} ;;
}
}


view: COMBINED_CRIME_INCIDENTS__09226311_fcff_44ac_a9d7_7b887e9f6410 {
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


view: US_REGIONS__7b45fd23_18d9_4a06_877e_0b3a2bc46c9f {
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