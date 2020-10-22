
connection:"presto-qa-1"


explore: OLIST_CUSTOMERS_DATASET__59fde38e_c625_433a_a21d_090af89dd85d {

join: CAT_REGION__2af423ef_1f47_41a5_8221_6077d69b33d5 {
 relationship: one_to_one
 sql_on: ${OLIST_CUSTOMERS_DATASET__59fde38e_c625_433a_a21d_090af89dd85d.CUSTOMER_STATE} = ${CAT_REGION__2af423ef_1f47_41a5_8221_6077d69b33d5.REGION_CD} ;;
}
}


view: OLIST_CUSTOMERS_DATASET__59fde38e_c625_433a_a21d_090af89dd85d {
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


view: CAT_REGION__2af423ef_1f47_41a5_8221_6077d69b33d5 {
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