
connection:"pmdevpresto"


explore: US_REGIONS__852075d7_9dd5_4a4c_9686_e0e027838959 {

join: BACHELOR_DEGREE_OR_HIGHER__9e7e5d83_79b9_4bce_b42f_669edd85ae0b {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__852075d7_9dd5_4a4c_9686_e0e027838959.REGION_CODE} = ${BACHELOR_DEGREE_OR_HIGHER__9e7e5d83_79b9_4bce_b42f_669edd85ae0b.REGION_CODE} ;;
}
join: COMBINED_CRIME_INCIDENTS__ebd70f8b_6df4_4d02_af2e_7c65118bed45 {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__852075d7_9dd5_4a4c_9686_e0e027838959.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__ebd70f8b_6df4_4d02_af2e_7c65118bed45.REGION_CODE} ;;
}
join: CIVILIAN_LABOR_FORCE__7fef6b3b_c4a2_43a2_a05a_bf8ccf19925b {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__852075d7_9dd5_4a4c_9686_e0e027838959.REGION_CODE} = ${CIVILIAN_LABOR_FORCE__7fef6b3b_c4a2_43a2_a05a_bf8ccf19925b.REGION_CODE} ;;
}
}


view: US_REGIONS__852075d7_9dd5_4a4c_9686_e0e027838959 {
sql_table_name:fred.FRED.US_REGIONS ;;
dimension: REGION_CODE {
  primary_key:yes
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


view: COMBINED_CRIME_INCIDENTS__ebd70f8b_6df4_4d02_af2e_7c65118bed45 {
sql_table_name:fred.FRED.COMBINED_CRIME_INCIDENTS ;;dimension: primary_key {
  primary_key: yes
  sql: CONCAT(${TABLE}.SERIES_ID, ${TABLE}.YEAR, ${TABLE}.SERIES_ID, ${TABLE}.YEAR) ;;
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


view: BACHELOR_DEGREE_OR_HIGHER__9e7e5d83_79b9_4bce_b42f_669edd85ae0b {
sql_table_name:fred.FRED.BACHELOR_DEGREE_OR_HIGHER ;;dimension: primary_key {
  primary_key: yes
  sql: CONCAT(${TABLE}.SERIES_ID, ${TABLE}.YEAR, ${TABLE}.SERIES_ID, ${TABLE}.YEAR) ;;
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


view: CIVILIAN_LABOR_FORCE__7fef6b3b_c4a2_43a2_a05a_bf8ccf19925b {
sql_table_name:fred.FRED.CIVILIAN_LABOR_FORCE ;;dimension: primary_key {
  primary_key: yes
  sql: CONCAT(${TABLE}.SERIES_ID, ${TABLE}.YEAR, ${TABLE}.SERIES_ID, ${TABLE}.YEAR) ;;
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
