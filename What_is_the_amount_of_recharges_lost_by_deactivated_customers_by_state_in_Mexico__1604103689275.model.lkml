
connection:"pmdevpresto"


explore: OLIST_CUSTOMERS_DATASET__c27f01e6_849e_4118_9d67_484aad9ece42 {

join: SUBS_RECHARGE__1be1d67a_1ff0_483a_8604_c86a199dcb19 {
 relationship: one_to_one
 sql_on: ${OLIST_CUSTOMERS_DATASET__c27f01e6_849e_4118_9d67_484aad9ece42.CUSTOMER_ID} = ${SUBS_RECHARGE__1be1d67a_1ff0_483a_8604_c86a199dcb19.SUBS_USER_ID} ;;
}
join: OLIST_ORDERS_DATASET__b1cb54b7_f09c_4623_8f7d_6c441b285a02 {
 relationship: one_to_one
 sql_on: ${OLIST_CUSTOMERS_DATASET__c27f01e6_849e_4118_9d67_484aad9ece42.CUSTOMER_ID} = ${OLIST_ORDERS_DATASET__b1cb54b7_f09c_4623_8f7d_6c441b285a02.CUSTOMER_ID} ;;
}
}


view: SUBS_RECHARGE__1be1d67a_1ff0_483a_8604_c86a199dcb19 {
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


view: OLIST_ORDERS_DATASET__b1cb54b7_f09c_4623_8f7d_6c441b285a02 {
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


view: OLIST_CUSTOMERS_DATASET__c27f01e6_849e_4118_9d67_484aad9ece42 {
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