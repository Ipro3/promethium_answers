
connection:"presto-qa-1"


explore: OLIST_CUSTOMERS_DATASET__54d6bf73_13e2_4725_b8ee_a9684918839d {

join: CAT_REGION__ff183460_685d_451b_8b66_c8ff8c75c1fc {
 relationship: one_to_one
 sql_on: ${OLIST_CUSTOMERS_DATASET__54d6bf73_13e2_4725_b8ee_a9684918839d.CUSTOMER_STATE} = ${CAT_REGION__ff183460_685d_451b_8b66_c8ff8c75c1fc.REGION_CD} ;;
}
}


view: OLIST_CUSTOMERS_DATASET__54d6bf73_13e2_4725_b8ee_a9684918839d {
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


view: CAT_REGION__ff183460_685d_451b_8b66_c8ff8c75c1fc {
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