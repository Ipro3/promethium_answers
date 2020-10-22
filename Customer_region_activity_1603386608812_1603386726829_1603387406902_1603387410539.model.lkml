
connection:"presto-qa-1"


explore: OLIST_CUSTOMERS_DATASET__66ec6042_7519_4aed_b026_b7c484432455 {

join: CAT_REGION__b17a68e8_4f56_42d0_8d9d_5c768a3a738b {
 relationship: one_to_one
 sql_on: ${OLIST_CUSTOMERS_DATASET__66ec6042_7519_4aed_b026_b7c484432455.CUSTOMER_STATE} = ${CAT_REGION__b17a68e8_4f56_42d0_8d9d_5c768a3a738b.REGION_CD} ;;
}
}


view: OLIST_CUSTOMERS_DATASET__66ec6042_7519_4aed_b026_b7c484432455 {
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


view: CAT_REGION__b17a68e8_4f56_42d0_8d9d_5c768a3a738b {
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