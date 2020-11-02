
connection:"pmdevpresto"


explore: US_REGIONS__5d5fd2d4_e3f8_4c28_86a5_19d834cbad28 {

join: COMBINED_CRIME_INCIDENTS__3c26e2aa_0af5_46b4_a8c0_56cfbe4ff92b {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__5d5fd2d4_e3f8_4c28_86a5_19d834cbad28.REGION_CODE} > ${COMBINED_CRIME_INCIDENTS__3c26e2aa_0af5_46b4_a8c0_56cfbe4ff92b.REGION_CODE} ;;
}
}


view: COMBINED_CRIME_INCIDENTS__3c26e2aa_0af5_46b4_a8c0_56cfbe4ff92b {
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


view: US_REGIONS__5d5fd2d4_e3f8_4c28_86a5_19d834cbad28 {
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