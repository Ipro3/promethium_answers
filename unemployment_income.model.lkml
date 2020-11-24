
connection:"pmdevpresto"


explore: UNEMPLOYMENT_RATE__8f9a48f2_ed88_4e0d_85fd_c0cc2fff43cd {

}


view: EST_MEDIAN_HOUSEHOLD_INCOME__8e87ba84_41fb_42ad_90ca_8f60966bc6b6 {
sql_table_name:fred.FRED.EST_MEDIAN_HOUSEHOLD_INCOME ;;
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


view: UNEMPLOYMENT_RATE__8f9a48f2_ed88_4e0d_85fd_c0cc2fff43cd {
sql_table_name:fred.FRED.UNEMPLOYMENT_RATE ;;
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