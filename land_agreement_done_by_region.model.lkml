
connection:"pmdevpresto"


explore: geographic_dimension__a49d8e41_a705_49ca_b97e_5966faf5a5c7 {

join: RESIDENT_POPULATION__32eb8b1f_153a_4088_b7b6_dd30f15829ea {
 type: inner
 relationship: many_to_one
 sql_on: ${geographic_dimension__a49d8e41_a705_49ca_b97e_5966faf5a5c7.geographic_area} = ${RESIDENT_POPULATION__32eb8b1f_153a_4088_b7b6_dd30f15829ea.SERIES_ID} ;;
}
join: HOMEOWNERSHIP_RATE__4ef060cf_e32b_43ab_8773_3b79c84505ee {
 type: inner
 relationship: many_to_one
 sql_on: ${HOMEOWNERSHIP_RATE__4ef060cf_e32b_43ab_8773_3b79c84505ee.SERIES_ID} = ${RESIDENT_POPULATION__32eb8b1f_153a_4088_b7b6_dd30f15829ea.SERIES_ID} ;;
}
}


view: HOMEOWNERSHIP_RATE__4ef060cf_e32b_43ab_8773_3b79c84505ee {
sql_table_name:mysql_v1.promethium.HOMEOWNERSHIP_RATE ;;
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
dimension: HOMEOWNERSHIP_RATE {
  sql: ${TABLE}.HOMEOWNERSHIP_RATE;;
}
dimension: YEAR {
  sql: ${TABLE}.YEAR;;
}
measure: REGION_CODE_sum {
type:sum
sql: ${REGION_CODE} ;;
 drill_fields: [detail*]
}
measure: HOMEOWNERSHIP_RATE_sum {
type:sum
sql: ${HOMEOWNERSHIP_RATE} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [SERIES_ID, REGION_CODE, HOMEOWNERSHIP_RATE, YEAR]
}
}


view: geographic_dimension__a49d8e41_a705_49ca_b97e_5966faf5a5c7 {
sql_table_name:mysql_v1.promethium.geographic_dimension ;;
dimension: geographic_area {
  primary_key: yes
  sql: ${TABLE}.geographic_area;;
}
dimension: geographic_area_name {
  sql: ${TABLE}.geographic_area_name;;
}
dimension: location_type_code {
  sql: ${TABLE}.location_type_code;;
}
dimension: region {
  sql: ${TABLE}.region;;
}
dimension: country {
  sql: ${TABLE}.country;;
}
dimension: other_region_details {
  sql: ${TABLE}.other_region_details;;
}
measure: location_type_code_sum {
type:sum
sql: ${location_type_code} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [geographic_area, geographic_area_name, location_type_code, region, country, other_region_details]
}
}


view: RESIDENT_POPULATION__32eb8b1f_153a_4088_b7b6_dd30f15829ea {
sql_table_name:mysql_v1.promethium.RESIDENT_POPULATION ;;
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
dimension: RESIDENT_POPULATION {
  sql: ${TABLE}.RESIDENT_POPULATION;;
}
dimension: YEAR {
  sql: ${TABLE}.YEAR;;
}
measure: REGION_CODE_sum {
type:sum
sql: ${REGION_CODE} ;;
 drill_fields: [detail*]
}
measure: RESIDENT_POPULATION_sum {
type:sum
sql: ${RESIDENT_POPULATION} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [SERIES_ID, REGION_CODE, RESIDENT_POPULATION, YEAR]
}
}