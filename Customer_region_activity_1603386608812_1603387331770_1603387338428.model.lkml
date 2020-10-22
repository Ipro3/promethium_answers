
connection:"presto-qa-1"


explore: OLIST_CUSTOMERS_DATASET__1f3fcb27_98b9_46d4_82f5_61ba1dd58102 {

join: CAT_REGION__80e3dfd0_3b65_48e2_8585_541d9148eda3 {
 relationship: one_to_one
 sql_on: ${OLIST_CUSTOMERS_DATASET__1f3fcb27_98b9_46d4_82f5_61ba1dd58102.CUSTOMER_STATE} = ${CAT_REGION__80e3dfd0_3b65_48e2_8585_541d9148eda3.REGION_CD} ;;
}
}


view: CAT_REGION__80e3dfd0_3b65_48e2_8585_541d9148eda3 {
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


view: OLIST_CUSTOMERS_DATASET__1f3fcb27_98b9_46d4_82f5_61ba1dd58102 {
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