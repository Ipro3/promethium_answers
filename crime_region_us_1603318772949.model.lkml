
connection:"presto-qa-1"


explore: US_REGIONS__29d4f776_2384_4d56_8ec8_88999fa6be1b {

join: COMBINED_CRIME_INCIDENTS__3d1a0915_21fa_4289_9930_cddbc08f3009 {
 relationship: one_to_one
 sql_on: ${US_REGIONS__29d4f776_2384_4d56_8ec8_88999fa6be1b.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__3d1a0915_21fa_4289_9930_cddbc08f3009.REGION_CODE} ;;
}
}


view: US_REGIONS__29d4f776_2384_4d56_8ec8_88999fa6be1b {
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


view: COMBINED_CRIME_INCIDENTS__3d1a0915_21fa_4289_9930_cddbc08f3009 {
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