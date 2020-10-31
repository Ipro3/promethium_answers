
connection:"pmdevpresto"


explore: OLIST_CUSTOMERS_DATASET__e2f19f3f_6b00_4e8c_b476_fe7920c867c9 {

join: SUBS_RECHARGE__a29eac41_4c64_4e5e_8dd7_9b279f44a03f {
 relationship: one_to_one
 sql_on: ${OLIST_CUSTOMERS_DATASET__e2f19f3f_6b00_4e8c_b476_fe7920c867c9.CUSTOMER_ID} = ${SUBS_RECHARGE__a29eac41_4c64_4e5e_8dd7_9b279f44a03f.SUBS_USER_ID} ;;
}
join: OLIST_ORDERS_DATASET__cd2a5ce1_a60e_4d24_9814_7ca21634d5c0 {
 relationship: one_to_one
 sql_on: ${OLIST_CUSTOMERS_DATASET__e2f19f3f_6b00_4e8c_b476_fe7920c867c9.CUSTOMER_ID} = ${OLIST_ORDERS_DATASET__cd2a5ce1_a60e_4d24_9814_7ca21634d5c0.CUSTOMER_ID} ;;
}
}


view: SUBS_RECHARGE__a29eac41_4c64_4e5e_8dd7_9b279f44a03f {
sql_table_name:oracle.RDSORACLEFORPRESTO.SUBS_RECHARGE ;;
measure: SUBS_ACCOUNT {
type:count_distinct
 sql: ${TABLE}.SUBS_ACCOUNT;;
}
measure: ACCESS_METHOD_NUMBER {
type:count_distinct
 sql: ${TABLE}.ACCESS_METHOD_NUMBER;;
}
dimension: SUBS_RECHARGE_EFF_DT {
 sql: ${TABLE}.SUBS_RECHARGE_EFF_DT;;
}
dimension: SUBS_RECHARGE_END_TM {
 sql: ${TABLE}.SUBS_RECHARGE_END_TM;;
}
measure: SUBS_RECHARGE_TYPE_CD {
type:count_distinct
 sql: ${TABLE}.SUBS_RECHARGE_TYPE_CD;;
}
measure: SUBS_RECHARGE_AMT {
type:count_distinct
 sql: ${TABLE}.SUBS_RECHARGE_AMT;;
}
measure: SUBS_SALES_FORCE_ID {
type:count_distinct
 sql: ${TABLE}.SUBS_SALES_FORCE_ID;;
}
measure: SUBS_REGION {
type:count_distinct
 sql: ${TABLE}.SUBS_REGION;;
}
measure: PLAN_ID {
type:count_distinct
 sql: ${TABLE}.PLAN_ID;;
}
measure: SUBS_RECHARGE_TOTAL_AMOUNT {
type:count_distinct
 sql: ${TABLE}.SUBS_RECHARGE_TOTAL_AMOUNT;;
}
dimension: SUBS_USER_ID {
 sql: ${TABLE}.SUBS_USER_ID;;
}
}


view: OLIST_CUSTOMERS_DATASET__e2f19f3f_6b00_4e8c_b476_fe7920c867c9 {
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


view: OLIST_ORDERS_DATASET__cd2a5ce1_a60e_4d24_9814_7ca21634d5c0 {
sql_table_name:oracle.RDSORACLEFORPRESTO.OLIST_ORDERS_DATASET ;;
dimension: ORDER_ID {
 sql: ${TABLE}.ORDER_ID;;
}
dimension: CUSTOMER_ID {
 sql: ${TABLE}.CUSTOMER_ID;;
}
dimension: ORDER_STATUS {
 sql: ${TABLE}.ORDER_STATUS;;
}
dimension: ORDER_PURCHASE_TIMESTAMP {
 sql: ${TABLE}.ORDER_PURCHASE_TIMESTAMP;;
}
dimension: ORDER_APPROVED_AT {
 sql: ${TABLE}.ORDER_APPROVED_AT;;
}
dimension: ORDER_DELIVERED_CARRIER_DATE {
 sql: ${TABLE}.ORDER_DELIVERED_CARRIER_DATE;;
}
dimension: ORDER_DELIVERED_CUSTOMER_DATE {
 sql: ${TABLE}.ORDER_DELIVERED_CUSTOMER_DATE;;
}
dimension: ORDER_ESTIMATED_DELIVERY_DATE {
 sql: ${TABLE}.ORDER_ESTIMATED_DELIVERY_DATE;;
}
}