
connection:"presto-qa-1"


explore: OLIST_CUSTOMERS_DATASET__2dc35ef3_6d77_4e31_ae44_3190a05eec60 {

join: CAT_REGION__6ee3c08e_980c_461e_bbf1_97435c4b0f86 {
 relationship: one_to_one
 sql_on: ${OLIST_CUSTOMERS_DATASET__2dc35ef3_6d77_4e31_ae44_3190a05eec60.CUSTOMER_STATE} = ${CAT_REGION__6ee3c08e_980c_461e_bbf1_97435c4b0f86.REGION_CD} ;;
}
}


view: CAT_REGION__6ee3c08e_980c_461e_bbf1_97435c4b0f86 {
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


view: OLIST_CUSTOMERS_DATASET__2dc35ef3_6d77_4e31_ae44_3190a05eec60 {
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