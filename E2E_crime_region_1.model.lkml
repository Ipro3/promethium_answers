
connection:"pmdevpresto"


explore: US_REGIONS__059b3dd2_d4eb_4e30_994f_f413fbf715b0 {

join: COMBINED_CRIME_INCIDENTS__f3d080d9_f76a_4121_a798_ca3c4768ce30 {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__059b3dd2_d4eb_4e30_994f_f413fbf715b0.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__f3d080d9_f76a_4121_a798_ca3c4768ce30.REGION_CODE} ;;
}
}


view: COMBINED_CRIME_INCIDENTS__f3d080d9_f76a_4121_a798_ca3c4768ce30 {
sql_table_name:fred.FRED.COMBINED_CRIME_INCIDENTS ;;
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
dimension: SERIES_VALUE {
  sql: ${TABLE}.SERIES_VALUE;;
}
dimension: YEAR {
  sql: ${TABLE}.YEAR;;
}
measure: REGION_CODE_sum {
type:sum
sql: ${REGION_CODE} ;;
 drill_fields: [detail*]
}
measure: SERIES_VALUE_sum {
type:sum
sql: ${SERIES_VALUE} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [SERIES_ID, REGION_CODE, SERIES_VALUE, YEAR]
}
}


view: US_REGIONS__059b3dd2_d4eb_4e30_994f_f413fbf715b0 {
sql_table_name:fred.FRED.US_REGIONS ;;
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