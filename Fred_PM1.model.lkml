
connection:"pmdevpresto"


explore: US_REGIONS__a3369df1_14ef_4f34_9855_310afb78b46c {

join: BACHELOR_DEGREE_OR_HIGHER__af9ace03_719b_499f_ab45_551f5e7621ad {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__a3369df1_14ef_4f34_9855_310afb78b46c.REGION_CODE} = ${BACHELOR_DEGREE_OR_HIGHER__af9ace03_719b_499f_ab45_551f5e7621ad.REGION_CODE} ;;
}
join: COMBINED_CRIME_INCIDENTS__979c5e3c_4b59_444c_9ef0_8a5c7e43da72 {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__a3369df1_14ef_4f34_9855_310afb78b46c.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__979c5e3c_4b59_444c_9ef0_8a5c7e43da72.REGION_CODE} ;;
}
join: CIVILIAN_LABOR_FORCE__21f8fd2d_4f54_4b8e_9b6f_20e794a3b6c6 {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__a3369df1_14ef_4f34_9855_310afb78b46c.REGION_CODE} = ${CIVILIAN_LABOR_FORCE__21f8fd2d_4f54_4b8e_9b6f_20e794a3b6c6.REGION_CODE} ;;
}
}


view: CIVILIAN_LABOR_FORCE__21f8fd2d_4f54_4b8e_9b6f_20e794a3b6c6 {
sql_table_name:fred.FRED.CIVILIAN_LABOR_FORCE ;;
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


view: US_REGIONS__a3369df1_14ef_4f34_9855_310afb78b46c {
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


view: COMBINED_CRIME_INCIDENTS__979c5e3c_4b59_444c_9ef0_8a5c7e43da72 {
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


view: BACHELOR_DEGREE_OR_HIGHER__af9ace03_719b_499f_ab45_551f5e7621ad {
sql_table_name:fred.FRED.BACHELOR_DEGREE_OR_HIGHER ;;
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