
connection:"testprod-2"


explore: SUB_STATUS_HIST__baf88710_004b_4e4f_8dc5_1e80502b1e15 {

join: SUBS_RECHARGE__6e3d9d97_07f1_436f_9a7e_c2c0cba30c18 {
 relationship: one_to_one
 sql_on: ${SUBS_RECHARGE__6e3d9d97_07f1_436f_9a7e_c2c0cba30c18.SUBS_ACCOUNT} = ${SUB_STATUS_HIST__baf88710_004b_4e4f_8dc5_1e80502b1e15.SUBS_ACCOUNT} ;;
}
join: CAT_REGION__6418adae_334f_4285_bc0e_15f101a935fa {
 relationship: one_to_one
 sql_on: ${SUB_STATUS_HIST__baf88710_004b_4e4f_8dc5_1e80502b1e15.SUBS_REGION_ID} = ${CAT_REGION__6418adae_334f_4285_bc0e_15f101a935fa.REGION_ID} ;;
}
join: CAT_POST_PHONE_STATUS__06b2cc3c_6b43_4130_90bb_361f70b54fbd {
 relationship: one_to_one
 sql_on: ${SUB_STATUS_HIST__baf88710_004b_4e4f_8dc5_1e80502b1e15.SUBS_STATUS_CD} = ${CAT_POST_PHONE_STATUS__06b2cc3c_6b43_4130_90bb_361f70b54fbd.PHONE_STATUS_ID} ;;
}
}


view: CAT_POST_PHONE_STATUS__06b2cc3c_6b43_4130_90bb_361f70b54fbd {
sql_table_name:oracle.RDSORACLEFORPRESTO.CAT_POST_PHONE_STATUS ;;
dimension: PHONE_STATUS_ID {
 sql: ${TABLE}.PHONE_STATUS_ID;;
}
dimension: PHONE_STATUS_CD {
 sql: ${TABLE}.PHONE_STATUS_CD;;
}
dimension: PHONE_STATUS_DESC {
 sql: ${TABLE}.PHONE_STATUS_DESC;;
}
}


view: SUBS_RECHARGE__6e3d9d97_07f1_436f_9a7e_c2c0cba30c18 {
sql_table_name:oracle.RDSORACLEFORPRESTO.SUBS_RECHARGE ;;
dimension: SUBS_ACCOUNT {
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


view: CAT_REGION__6418adae_334f_4285_bc0e_15f101a935fa {
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


view: SUB_STATUS_HIST__baf88710_004b_4e4f_8dc5_1e80502b1e15 {
sql_table_name:oracle.RDSORACLEFORPRESTO.SUB_STATUS_HIST ;;
measure: ACCESS_METHOD_NUMBER {
type:count_distinct
 sql: ${TABLE}.ACCESS_METHOD_NUMBER;;
}
dimension: SUBS_ACCOUNT {
 sql: ${TABLE}.SUBS_ACCOUNT;;
}
dimension: SUBS_REGION_ID {
 sql: ${TABLE}.SUBS_REGION_ID;;
}
dimension: SUBS_STATUS_CD {
 sql: ${TABLE}.SUBS_STATUS_CD;;
}
dimension: SUBS_STATUS_EFF_DT {
 sql: ${TABLE}.SUBS_STATUS_EFF_DT;;
}
dimension: LOAD_DT {
 sql: ${TABLE}.LOAD_DT;;
}
}