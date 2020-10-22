
connection:"presto-qa-1"


explore: US_REGIONS__31f69e4c_ce21_4c09_8ed4_368d477df9c8 {

join: COMBINED_CRIME_INCIDENTS__2fd9263c_cc42_4339_8a66_a8280d672a6b {
 relationship: one_to_one
 sql_on: ${US_REGIONS__31f69e4c_ce21_4c09_8ed4_368d477df9c8.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__2fd9263c_cc42_4339_8a66_a8280d672a6b.REGION_CODE} ;;
}
}


view: US_REGIONS__31f69e4c_ce21_4c09_8ed4_368d477df9c8 {
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


view: COMBINED_CRIME_INCIDENTS__2fd9263c_cc42_4339_8a66_a8280d672a6b {
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