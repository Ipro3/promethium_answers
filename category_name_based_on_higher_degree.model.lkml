
connection:"pmdevpresto"


explore: CATEGORY_NAME_TRANSLATION__1a826b5d_c677_4f1c_b7e6_bc326c4bc3b5 {

join: BACHELOR_DEGREE_OR_HIGHER__f3a1eb12_c2e3_4e18_a374_e211651fa6f1 {
 type: full_outer
 relationship: many_to_one
 sql_on: ${CATEGORY_NAME_TRANSLATION__1a826b5d_c677_4f1c_b7e6_bc326c4bc3b5.PROD_CATEGORY_NAME} = ${BACHELOR_DEGREE_OR_HIGHER__f3a1eb12_c2e3_4e18_a374_e211651fa6f1.SERIES_ID} 
 and ${CATEGORY_NAME_TRANSLATION__1a826b5d_c677_4f1c_b7e6_bc326c4bc3b5.PRODUCT_CATEGORY_NAME_ENGLISH} <> ${BACHELOR_DEGREE_OR_HIGHER__f3a1eb12_c2e3_4e18_a374_e211651fa6f1.SERIES_ID} ;;
}
}


view: CATEGORY_NAME_TRANSLATION__1a826b5d_c677_4f1c_b7e6_bc326c4bc3b5 {
sql_table_name:pm61oracle_media.RDSORACLEFORPRESTO.CATEGORY_NAME_TRANSLATION ;;
dimension: PROD_CATEGORY_NAME {
  sql: ${TABLE}.PROD_CATEGORY_NAME;;
}
dimension: PRODUCT_CATEGORY_NAME_ENGLISH {
  sql: ${TABLE}.PRODUCT_CATEGORY_NAME_ENGLISH;;
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [PROD_CATEGORY_NAME, PRODUCT_CATEGORY_NAME_ENGLISH]
}
}


view: BACHELOR_DEGREE_OR_HIGHER__f3a1eb12_c2e3_4e18_a374_e211651fa6f1 {
sql_table_name:mysql_v1.promethium.BACHELOR_DEGREE_OR_HIGHER ;;
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
dimension: BACHELOR_DEGREE_OR_HIGHER {
  sql: ${TABLE}.BACHELOR_DEGREE_OR_HIGHER;;
}
dimension: YEAR {
  sql: ${TABLE}.YEAR;;
}
measure: REGION_CODE_sum {
type:sum
sql: ${REGION_CODE} ;;
 drill_fields: [detail*]
}
measure: BACHELOR_DEGREE_OR_HIGHER_sum {
type:sum
sql: ${BACHELOR_DEGREE_OR_HIGHER} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [SERIES_ID, REGION_CODE, BACHELOR_DEGREE_OR_HIGHER, YEAR]
}
}