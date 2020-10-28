
connection:"pmdevpresto"


explore: US_REGIONS__ae14a4f8_c377_453e_8134_af940dc45b6f {

join: COMBINED_CRIME_INCIDENTS__2c67ad98_a98c_4cd3_93db_8ef4d82404cd {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__ae14a4f8_c377_453e_8134_af940dc45b6f.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__2c67ad98_a98c_4cd3_93db_8ef4d82404cd.REGION_CODE} ;;
}
}


view: US_REGIONS__ae14a4f8_c377_453e_8134_af940dc45b6f {
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


view: COMBINED_CRIME_INCIDENTS__2c67ad98_a98c_4cd3_93db_8ef4d82404cd {
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