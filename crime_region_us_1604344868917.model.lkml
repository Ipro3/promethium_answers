
connection:"pmdevpresto"


explore: US_REGIONS__13f9f004_ca50_4a52_bc4c_ff215bdf5035 {

join: COMBINED_CRIME_INCIDENTS__2a384011_6e38_4303_8d57_9d1bbe58a28c {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__13f9f004_ca50_4a52_bc4c_ff215bdf5035.REGION_CODE} > ${COMBINED_CRIME_INCIDENTS__2a384011_6e38_4303_8d57_9d1bbe58a28c.REGION_CODE} ;;
}
}


view: COMBINED_CRIME_INCIDENTS__2a384011_6e38_4303_8d57_9d1bbe58a28c {
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


view: US_REGIONS__13f9f004_ca50_4a52_bc4c_ff215bdf5035 {
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