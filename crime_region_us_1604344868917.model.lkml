
connection:"pmdevpresto"


explore: US_REGIONS__e6a50a31_94e4_4dc1_96ef_82f86e49b676 {

join: COMBINED_CRIME_INCIDENTS__cb2f7f0f_7206_4699_8673_7b3c9434a4cb {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__e6a50a31_94e4_4dc1_96ef_82f86e49b676.REGION_CODE} > ${COMBINED_CRIME_INCIDENTS__cb2f7f0f_7206_4699_8673_7b3c9434a4cb.REGION_CODE} ;;
}
}


view: US_REGIONS__e6a50a31_94e4_4dc1_96ef_82f86e49b676 {
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


view: COMBINED_CRIME_INCIDENTS__cb2f7f0f_7206_4699_8673_7b3c9434a4cb {
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