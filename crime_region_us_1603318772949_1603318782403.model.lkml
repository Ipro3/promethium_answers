
connection:"presto-qa-1"


explore: US_REGIONS__4eabcaeb_24d9_4f7e_be55_1e81ed31a912 {

join: COMBINED_CRIME_INCIDENTS__b27985e0_733d_4818_82bc_fae2d12ef693 {
 relationship: one_to_one
 sql_on: ${US_REGIONS__4eabcaeb_24d9_4f7e_be55_1e81ed31a912.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__b27985e0_733d_4818_82bc_fae2d12ef693.REGION_CODE} ;;
}
}


view: US_REGIONS__4eabcaeb_24d9_4f7e_be55_1e81ed31a912 {
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


view: COMBINED_CRIME_INCIDENTS__b27985e0_733d_4818_82bc_fae2d12ef693 {
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