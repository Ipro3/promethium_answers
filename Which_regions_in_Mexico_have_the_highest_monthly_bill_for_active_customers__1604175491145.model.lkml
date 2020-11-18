
connection:"testprod-2"


explore: SUBS_RECHARGE__cda8e01a_345b_41f3_ae86_942f393eac65 {

join: CAT_REGION__54bd1c0c_66d2_4a5f_9efa_44a79841cca3 {
 relationship: one_to_one
 sql_on: ${SUBS_RECHARGE__cda8e01a_345b_41f3_ae86_942f393eac65.SUBS_REGION} = ${CAT_REGION__54bd1c0c_66d2_4a5f_9efa_44a79841cca3.REGION_ID} ;;
}
}


view: CAT_REGION__54bd1c0c_66d2_4a5f_9efa_44a79841cca3 {
sql_table_name:snowflake.SCHEMA_INFO.CAT_REGION ;;
dimension: REGION_ID {
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


view: SUBS_RECHARGE__cda8e01a_345b_41f3_ae86_942f393eac65 {
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
dimension: SUBS_REGION {
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