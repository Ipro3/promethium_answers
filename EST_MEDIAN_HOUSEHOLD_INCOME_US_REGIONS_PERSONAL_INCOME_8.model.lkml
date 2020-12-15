
connection:"pmdevpresto"


explore: US_REGIONS__e3fdc477_09e5_493e_94f4_d6f77741c787 {

join: PERSONAL_INCOME__cc5d6fd6_4d0e_4c80_a5d6_1dc875204f23 {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__e3fdc477_09e5_493e_94f4_d6f77741c787.REGION_CODE} = ${PERSONAL_INCOME__cc5d6fd6_4d0e_4c80_a5d6_1dc875204f23.REGION_CODE} ;;
}
join: EST_MEDIAN_HOUSEHOLD_INCOME__200e6e6e_50da_43d3_afa8_62637df03f1c {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__e3fdc477_09e5_493e_94f4_d6f77741c787.REGION_CODE} = ${EST_MEDIAN_HOUSEHOLD_INCOME__200e6e6e_50da_43d3_afa8_62637df03f1c.REGION_CODE} ;;
}
}


view: US_REGIONS__e3fdc477_09e5_493e_94f4_d6f77741c787 {
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


view: EST_MEDIAN_HOUSEHOLD_INCOME__200e6e6e_50da_43d3_afa8_62637df03f1c {
sql_table_name:mysql_v1.promethium.EST_MEDIAN_HOUSEHOLD_INCOME ;;
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
dimension: EST_MEDIAN_HOUSEHOLD_INCOME {
  sql: ${TABLE}.EST_MEDIAN_HOUSEHOLD_INCOME;;
}
dimension: YEAR {
  sql: ${TABLE}.YEAR;;
}
measure: REGION_CODE_sum {
type:sum
sql: ${REGION_CODE} ;;
 drill_fields: [detail*]
}
measure: EST_MEDIAN_HOUSEHOLD_INCOME_sum {
type:sum
sql: ${EST_MEDIAN_HOUSEHOLD_INCOME} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [SERIES_ID, REGION_CODE, EST_MEDIAN_HOUSEHOLD_INCOME, YEAR]
}
}


view: PERSONAL_INCOME__cc5d6fd6_4d0e_4c80_a5d6_1dc875204f23 {
sql_table_name:mysql_v1.promethium.PERSONAL_INCOME ;;
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
dimension: PERSONAL_INCOME {
  sql: ${TABLE}.PERSONAL_INCOME;;
}
dimension: YEAR {
  sql: ${TABLE}.YEAR;;
}
measure: REGION_CODE_sum {
type:sum
sql: ${REGION_CODE} ;;
 drill_fields: [detail*]
}
measure: PERSONAL_INCOME_sum {
type:sum
sql: ${PERSONAL_INCOME} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [SERIES_ID, REGION_CODE, PERSONAL_INCOME, YEAR]
}
}