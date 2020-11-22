
connection:"testprod-2"


explore: SUBS_RECHARGE__3f3247a7_974b_4033_b9d5_313292d894ec {

join: CAT_REGION__177b6cc1_7a79_4256_92ba_bac4732ad521 {
 relationship: one_to_one
 sql_on: ${SUBS_RECHARGE__3f3247a7_974b_4033_b9d5_313292d894ec.SUBS_REGION} = ${CAT_REGION__177b6cc1_7a79_4256_92ba_bac4732ad521.REGION_ID} ;;
}
}


view: SUBS_RECHARGE__3f3247a7_974b_4033_b9d5_313292d894ec {
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


view: CAT_REGION__177b6cc1_7a79_4256_92ba_bac4732ad521 {
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