
connection:"pmdevpresto"


explore: US_REGIONS__48384ddf_1ebb_43ed_97da_21238a191e2e {

join: COMBINED_CRIME_INCIDENTS__9f6d5063_5166_4e81_af75_59f9d9943be2 {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__48384ddf_1ebb_43ed_97da_21238a191e2e.REGION_CODE} > ${COMBINED_CRIME_INCIDENTS__9f6d5063_5166_4e81_af75_59f9d9943be2.REGION_CODE} ;;
}
}


view: COMBINED_CRIME_INCIDENTS__9f6d5063_5166_4e81_af75_59f9d9943be2 {
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


view: US_REGIONS__48384ddf_1ebb_43ed_97da_21238a191e2e {
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