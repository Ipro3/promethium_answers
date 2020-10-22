
connection:"pmdevpresto"


explore: US_REGIONS__67413d05_0b11_477a_8476_bc90f0ef67a9 {

join: COMBINED_CRIME_INCIDENTS__9b55f7fa_00f3_444e_ac2c_a16e5c45180f {
 relationship: one_to_one
 sql_on: ${US_REGIONS__67413d05_0b11_477a_8476_bc90f0ef67a9.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__9b55f7fa_00f3_444e_ac2c_a16e5c45180f.REGION_CODE} ;;
}
}


view: US_REGIONS__67413d05_0b11_477a_8476_bc90f0ef67a9 {
sql_table_name:promethium.promethium.US_REGIONS ;;
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


view: COMBINED_CRIME_INCIDENTS__9b55f7fa_00f3_444e_ac2c_a16e5c45180f {
sql_table_name:promethium.promethium.COMBINED_CRIME_INCIDENTS ;;
dimension: SERIES_ID {
 sql: ${TABLE}.SERIES_ID;;
}
dimension: REGION_CODE {
 sql: ${TABLE}.REGION_CODE;;
}
measure: COMBINED_CRIME_INCIDENTS {
type:count_distinct
 sql: ${TABLE}.COMBINED_CRIME_INCIDENTS;;
}
dimension: YEAR {
 sql: ${TABLE}.YEAR;;
}
}