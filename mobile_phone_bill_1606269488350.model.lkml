
connection:"testprod-2"


explore: SUB_STATUS_HIST__8f1c4ef7_6ae9_4558_9a4c_0f59a100d9ed {

join: SUBS_RECHARGE__73f1d546_4633_4484_81d3_3fadd0a9191f {
 relationship: one_to_one
 sql_on: ${SUBS_RECHARGE__73f1d546_4633_4484_81d3_3fadd0a9191f.SUBS_ACCOUNT} = ${SUB_STATUS_HIST__8f1c4ef7_6ae9_4558_9a4c_0f59a100d9ed.SUBS_ACCOUNT} 
 and ${SUBS_RECHARGE__73f1d546_4633_4484_81d3_3fadd0a9191f.SUBS_RECHARGE_EFF_DT} = ${SUB_STATUS_HIST__8f1c4ef7_6ae9_4558_9a4c_0f59a100d9ed.SUBS_STATUS_EFF_DT} ;;
}
join: CAT_REGION__8dab2ff9_8d44_4dbf_a37e_f7c0578e0821 {
 relationship: one_to_one
 sql_on: ${SUB_STATUS_HIST__8f1c4ef7_6ae9_4558_9a4c_0f59a100d9ed.SUBS_REGION_ID} = ${CAT_REGION__8dab2ff9_8d44_4dbf_a37e_f7c0578e0821.REGION_ID} ;;
}
join: CAT_POST_PHONE_STATUS__c59b5a0b_d8dd_4462_9643_b9c31ed45178 {
 relationship: one_to_one
 sql_on: ${SUB_STATUS_HIST__8f1c4ef7_6ae9_4558_9a4c_0f59a100d9ed.SUBS_STATUS_CD} = ${CAT_POST_PHONE_STATUS__c59b5a0b_d8dd_4462_9643_b9c31ed45178.PHONE_STATUS_ID} ;;
}
}


view: SUB_STATUS_HIST__8f1c4ef7_6ae9_4558_9a4c_0f59a100d9ed {
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


view: CAT_POST_PHONE_STATUS__c59b5a0b_d8dd_4462_9643_b9c31ed45178 {
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


view: CAT_REGION__8dab2ff9_8d44_4dbf_a37e_f7c0578e0821 {
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


view: SUBS_RECHARGE__73f1d546_4633_4484_81d3_3fadd0a9191f {
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