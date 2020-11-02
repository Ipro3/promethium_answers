
connection:"pmdevpresto"


explore: US_REGIONS__02634563_4f9e_423d_acfa_e0e64fd4ebc7 {

join: COMBINED_CRIME_INCIDENTS__f9fad629_81f7_4089_be97_56ed8429fc2a {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__02634563_4f9e_423d_acfa_e0e64fd4ebc7.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__f9fad629_81f7_4089_be97_56ed8429fc2a.REGION_CODE} ;;
}
}


view: US_REGIONS__02634563_4f9e_423d_acfa_e0e64fd4ebc7 {
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


view: COMBINED_CRIME_INCIDENTS__f9fad629_81f7_4089_be97_56ed8429fc2a {
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