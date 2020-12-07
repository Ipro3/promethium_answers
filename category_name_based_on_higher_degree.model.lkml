
connection:"pmdevpresto"


explore: CATEGORY_NAME_TRANSLATION__3f3998d2_a03e_49ef_be34_2f7bbf4aa0e6 {

join: BACHELOR_DEGREE_OR_HIGHER__fd9c262c_1aa3_40d0_a018_5951b9e83a28 {
 type: full_outer
 relationship: many_to_one
 sql_on: ${CATEGORY_NAME_TRANSLATION__3f3998d2_a03e_49ef_be34_2f7bbf4aa0e6.PROD_CATEGORY_NAME} = ${BACHELOR_DEGREE_OR_HIGHER__fd9c262c_1aa3_40d0_a018_5951b9e83a28.SERIES_ID} 
 and ${CATEGORY_NAME_TRANSLATION__3f3998d2_a03e_49ef_be34_2f7bbf4aa0e6.PRODUCT_CATEGORY_NAME_ENGLISH} <> ${BACHELOR_DEGREE_OR_HIGHER__fd9c262c_1aa3_40d0_a018_5951b9e83a28.SERIES_ID} ;;
}
}


view: CATEGORY_NAME_TRANSLATION__3f3998d2_a03e_49ef_be34_2f7bbf4aa0e6 {
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


view: BACHELOR_DEGREE_OR_HIGHER__fd9c262c_1aa3_40d0_a018_5951b9e83a28 {
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