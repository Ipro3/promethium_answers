
connection:"presto-qa-1"


explore: US_REGIONS__5fbe926d_d21c_41e5_9de0_746527d49cfe {

join: COMBINED_CRIME_INCIDENTS__da1f6159_be60_4c6f_8c44_b6ee69e08e62 {
 relationship: one_to_one
 sql_on: ${US_REGIONS__5fbe926d_d21c_41e5_9de0_746527d49cfe.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__da1f6159_be60_4c6f_8c44_b6ee69e08e62.REGION_CODE} ;;
}
}


view: COMBINED_CRIME_INCIDENTS__da1f6159_be60_4c6f_8c44_b6ee69e08e62 {
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


view: US_REGIONS__5fbe926d_d21c_41e5_9de0_746527d49cfe {
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