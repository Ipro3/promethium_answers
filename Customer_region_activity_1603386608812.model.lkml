
connection:"presto-qa-1"


explore: OLIST_CUSTOMERS_DATASET__3c372256_bc64_496c_a67c_8ec7b786e2de {

join: CAT_REGION__cdbadb7b_ad75_496f_b0f8_caed27bf6279 {
 relationship: one_to_one
 sql_on: ${OLIST_CUSTOMERS_DATASET__3c372256_bc64_496c_a67c_8ec7b786e2de.CUSTOMER_STATE} = ${CAT_REGION__cdbadb7b_ad75_496f_b0f8_caed27bf6279.REGION_CD} ;;
}
}


view: CAT_REGION__cdbadb7b_ad75_496f_b0f8_caed27bf6279 {
sql_table_name:oracle.RDSORACLEFORPRESTO.CAT_REGION ;;
measure: REGION_ID {
type:count_distinct
 sql: ${TABLE}.REGION_ID;;
}
dimension: REGION_CD {
 sql: ${TABLE}.REGION_CD;;
}
dimension: REGION_DESC {
 sql: ${TABLE}.REGION_DESC;;
}
dimension: STATE_ID {
 sql: ${TABLE}.STATE_ID;;
}
}


view: OLIST_CUSTOMERS_DATASET__3c372256_bc64_496c_a67c_8ec7b786e2de {
sql_table_name:oracle.RDSORACLEFORPRESTO.OLIST_CUSTOMERS_DATASET ;;
dimension: CUSTOMER_ID {
 sql: ${TABLE}.CUSTOMER_ID;;
}
dimension: CUSTOMER_UNIQUE_ID {
 sql: ${TABLE}.CUSTOMER_UNIQUE_ID;;
}
dimension: CUSTOMER_ZIP_CODE_PREFIX {
 sql: ${TABLE}.CUSTOMER_ZIP_CODE_PREFIX;;
}
dimension: CUSTOMER_CITY {
 sql: ${TABLE}.CUSTOMER_CITY;;
}
dimension: CUSTOMER_STATE {
 sql: ${TABLE}.CUSTOMER_STATE;;
}
}