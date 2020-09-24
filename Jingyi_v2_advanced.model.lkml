
connection: "pmdevpresto"


explore: US_REGIONS__4135c5c8_a7db_4140_b206_b195b55b9623 {

join: COMBINED_CRIME_INCIDENTS__3b2bc8e2_1c2c_4f60_89ba_9687586db9b8 {
 relationship: one_to_one
 sql_on: ${US_REGIONS__4135c5c8_a7db_4140_b206_b195b55b9623.REGION_CODE} < ${COMBINED_CRIME_INCIDENTS__3b2bc8e2_1c2c_4f60_89ba_9687586db9b8.REGION_CODE} ;;
}
}


view: US_REGIONS__4135c5c8_a7db_4140_b206_b195b55b9623 {
sql_table_name:ds_mysql.promethium.US_REGIONS ;;
dimension: REGION_CODE {
 type: string
 sql: ${TABLE}.REGION_CODE;;
}
dimension: REGION_NAME {
 type: string
 sql: ${TABLE}.REGION_NAME;;
}
dimension: US_STATE {
 type: string
 sql: ${TABLE}.US_STATE;;
}
}


view: COMBINED_CRIME_INCIDENTS__3b2bc8e2_1c2c_4f60_89ba_9687586db9b8 {
sql_table_name:ds_mysql.promethium.COMBINED_CRIME_INCIDENTS ;;
dimension: SERIES_ID {
 type: string
 sql: ${TABLE}.SERIES_ID;;
}
dimension: REGION_CODE {
 type: string
 sql: ${TABLE}.REGION_CODE;;
}
dimension: COMBINED_CRIME_INCIDENTS {
 type: string
 sql: ${TABLE}.COMBINED_CRIME_INCIDENTS;;
}
dimension: YEAR {
 type: string
 sql: ${TABLE}.YEAR;;
}
}