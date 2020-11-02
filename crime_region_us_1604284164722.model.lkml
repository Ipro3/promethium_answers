
connection:"pmdevpresto"


explore: US_REGIONS__23f2ba3b_1c12_43e2_adf5_8c9da73484ae {

join: COMBINED_CRIME_INCIDENTS__38e6e61c_ed1c_44be_be9c_54fe4211d34f {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__23f2ba3b_1c12_43e2_adf5_8c9da73484ae.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__38e6e61c_ed1c_44be_be9c_54fe4211d34f.REGION_CODE} ;;
}
}


view: COMBINED_CRIME_INCIDENTS__38e6e61c_ed1c_44be_be9c_54fe4211d34f {
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


view: US_REGIONS__23f2ba3b_1c12_43e2_adf5_8c9da73484ae {
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