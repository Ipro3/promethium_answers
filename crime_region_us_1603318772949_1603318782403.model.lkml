
connection:"presto-qa-1"


explore: US_REGIONS__f57306e9_9243_4ca7_8b7d_e34e9aa7764e {

join: COMBINED_CRIME_INCIDENTS__af31d245_9696_4eff_b3d7_720c024e11bf {
 relationship: one_to_one
 sql_on: ${US_REGIONS__f57306e9_9243_4ca7_8b7d_e34e9aa7764e.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__af31d245_9696_4eff_b3d7_720c024e11bf.REGION_CODE} ;;
}
}


view: US_REGIONS__f57306e9_9243_4ca7_8b7d_e34e9aa7764e {
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


view: COMBINED_CRIME_INCIDENTS__af31d245_9696_4eff_b3d7_720c024e11bf {
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