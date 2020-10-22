
connection:"pmdevpresto"


explore: US_REGIONS__e4493077_84b0_4c4f_aed2_4e625cfdfa9c {

join: COMBINED_CRIME_INCIDENTS__39360bf1_d1ce_4ce6_a031_ad0720b114a1 {
 relationship: one_to_one
 sql_on: ${US_REGIONS__e4493077_84b0_4c4f_aed2_4e625cfdfa9c.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__39360bf1_d1ce_4ce6_a031_ad0720b114a1.REGION_CODE} ;;
}
}


view: COMBINED_CRIME_INCIDENTS__39360bf1_d1ce_4ce6_a031_ad0720b114a1 {
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


view: US_REGIONS__e4493077_84b0_4c4f_aed2_4e625cfdfa9c {
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