
connection:"pmdevpresto"


explore: US_REGIONS__5f37a970_4a13_47a1_96b9_2f0a03f85b82 {

join: BACHELOR_DEGREE_OR_HIGHER__1a32d434_4ff3_422a_ae13_4e858f431e15 {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__5f37a970_4a13_47a1_96b9_2f0a03f85b82.REGION_CODE} = ${BACHELOR_DEGREE_OR_HIGHER__1a32d434_4ff3_422a_ae13_4e858f431e15.REGION_CODE} ;;
}
join: COMBINED_CRIME_INCIDENTS__0ecb18bb_f895_42e3_8cb2_7d1f6fab705b {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__5f37a970_4a13_47a1_96b9_2f0a03f85b82.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__0ecb18bb_f895_42e3_8cb2_7d1f6fab705b.REGION_CODE} ;;
}
join: CIVILIAN_LABOR_FORCE__353d11a6_ad65_4813_8399_1c47e985c5dc {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__5f37a970_4a13_47a1_96b9_2f0a03f85b82.REGION_CODE} = ${CIVILIAN_LABOR_FORCE__353d11a6_ad65_4813_8399_1c47e985c5dc.REGION_CODE} ;;
}
}


view: US_REGIONS__5f37a970_4a13_47a1_96b9_2f0a03f85b82 {
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


view: COMBINED_CRIME_INCIDENTS__0ecb18bb_f895_42e3_8cb2_7d1f6fab705b {
sql_table_name:fred.FRED.COMBINED_CRIME_INCIDENTS ;;
  dimension: primary_key {
  primary_key: yessql: CONCAT(${TABLE}.SERIES_ID, ${TABLE}.YEAR, ${TABLE}.SERIES_ID, ${TABLE}.YEAR) ;;
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


view: CIVILIAN_LABOR_FORCE__353d11a6_ad65_4813_8399_1c47e985c5dc {
sql_table_name:fred.FRED.CIVILIAN_LABOR_FORCE ;;
  dimension: primary_key {
  primary_key: yessql: CONCAT(${TABLE}.SERIES_ID, ${TABLE}.YEAR, ${TABLE}.SERIES_ID, ${TABLE}.YEAR) ;;
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


view: BACHELOR_DEGREE_OR_HIGHER__1a32d434_4ff3_422a_ae13_4e858f431e15 {
sql_table_name:fred.FRED.BACHELOR_DEGREE_OR_HIGHER ;;
  dimension: primary_key {
  primary_key: yessql: CONCAT(${TABLE}.SERIES_ID, ${TABLE}.YEAR, ${TABLE}.SERIES_ID, ${TABLE}.YEAR) ;;
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