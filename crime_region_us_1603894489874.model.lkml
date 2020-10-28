
connection:"pmdevpresto"


explore: US_REGIONS__fddd30b9_2506_473e_9428_cb893364c64c {

join: COMBINED_CRIME_INCIDENTS__b6c666d5_3515_4676_8bda_9f8674ca4539 {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__fddd30b9_2506_473e_9428_cb893364c64c.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__b6c666d5_3515_4676_8bda_9f8674ca4539.REGION_CODE} ;;
}
}


view: US_REGIONS__fddd30b9_2506_473e_9428_cb893364c64c {
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


view: COMBINED_CRIME_INCIDENTS__b6c666d5_3515_4676_8bda_9f8674ca4539 {
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