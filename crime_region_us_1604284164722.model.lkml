
connection:"pmdevpresto"


explore: US_REGIONS__2574f410_cc5b_4a19_ad48_5c484e7e12f2 {

join: COMBINED_CRIME_INCIDENTS__03c9169d_4f4d_472f_8703_221866490662 {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__2574f410_cc5b_4a19_ad48_5c484e7e12f2.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__03c9169d_4f4d_472f_8703_221866490662.REGION_CODE} ;;
}
}


view: US_REGIONS__2574f410_cc5b_4a19_ad48_5c484e7e12f2 {
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


view: COMBINED_CRIME_INCIDENTS__03c9169d_4f4d_472f_8703_221866490662 {
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