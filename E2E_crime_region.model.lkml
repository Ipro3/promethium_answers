
connection:"pmdevpresto"


explore: US_REGIONS__4ee54777_f820_41d4_b128_0ce5c5258030 {

join: COMBINED_CRIME_INCIDENTS__720f5a17_3280_40a2_b3c0_e12d87461d12 {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__4ee54777_f820_41d4_b128_0ce5c5258030.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__720f5a17_3280_40a2_b3c0_e12d87461d12.REGION_CODE} ;;
}
}


view: US_REGIONS__4ee54777_f820_41d4_b128_0ce5c5258030 {
sql_table_name:mysql_v1.promethium.US_REGIONS ;;
dimension: REGION_CODE {
  primary_key: yes
  sql: ${TABLE}.REGION_CODE;;
}
dimension: REGION_NAME {
  sql: ${TABLE}.REGION_NAME;;
}
dimension: US_STATE {
  sql: ${TABLE}.US_STATE;;
}
measure: REGION_CODE_sum {
type:sum
sql: ${REGION_CODE} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [REGION_CODE, REGION_NAME, US_STATE]
}
}


view: COMBINED_CRIME_INCIDENTS__720f5a17_3280_40a2_b3c0_e12d87461d12 {
sql_table_name:mysql_v1.promethium.COMBINED_CRIME_INCIDENTS ;;
  dimension: primary_key {
  primary_key: yes
  sql: CONCAT(${TABLE}.SERIES_ID, ${TABLE}.YEAR, ${TABLE}.SERIES_ID, ${TABLE}.YEAR) ;;
}
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
measure: REGION_CODE_sum {
type:sum
sql: ${REGION_CODE} ;;
 drill_fields: [detail*]
}
measure: COMBINED_CRIME_INCIDENTS_sum {
type:sum
sql: ${COMBINED_CRIME_INCIDENTS} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [SERIES_ID, REGION_CODE, COMBINED_CRIME_INCIDENTS, YEAR]
}
}