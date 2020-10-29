
connection:"pmdevpresto"


explore: US_REGIONS__36afb7a8_996c_43bb_8f9a_65a3ecdc155e {

join: COMBINED_CRIME_INCIDENTS__5c275bfc_40ea_4cfb_ad16_e9011cb828a9 {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__36afb7a8_996c_43bb_8f9a_65a3ecdc155e.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__5c275bfc_40ea_4cfb_ad16_e9011cb828a9.REGION_CODE} ;;
}
}


view: COMBINED_CRIME_INCIDENTS__5c275bfc_40ea_4cfb_ad16_e9011cb828a9 {
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


view: US_REGIONS__36afb7a8_996c_43bb_8f9a_65a3ecdc155e {
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