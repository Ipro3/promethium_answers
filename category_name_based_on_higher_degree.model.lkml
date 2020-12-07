
connection:"pmdevpresto"


explore: CATEGORY_NAME_TRANSLATION__68a447b1_b49c_438f_9980_22b29409b5f6 {

join: BACHELOR_DEGREE_OR_HIGHER__85cd889d_f2f2_45c4_9f85_5b050883e0de {
 type: inner
 relationship: many_to_one
 sql_on: ${CATEGORY_NAME_TRANSLATION__68a447b1_b49c_438f_9980_22b29409b5f6.PROD_CATEGORY_NAME} = ${BACHELOR_DEGREE_OR_HIGHER__85cd889d_f2f2_45c4_9f85_5b050883e0de.SERIES_ID} ;;
}
}


view: BACHELOR_DEGREE_OR_HIGHER__85cd889d_f2f2_45c4_9f85_5b050883e0de {
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


view: CATEGORY_NAME_TRANSLATION__68a447b1_b49c_438f_9980_22b29409b5f6 {
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