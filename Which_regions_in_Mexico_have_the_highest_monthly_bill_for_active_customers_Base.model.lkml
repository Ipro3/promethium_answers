
connection:"testprod-2"


explore: SUBS_RECHARGE__364f80fc_584d_4e44_883f_621ae70e75ad {

join: CAT_REGION__972d97da_b855_43a8_aa73_ef71bf5bf79b {
 relationship: one_to_one
 sql_on: ${SUBS_RECHARGE__364f80fc_584d_4e44_883f_621ae70e75ad.SUBS_REGION} = ${CAT_REGION__972d97da_b855_43a8_aa73_ef71bf5bf79b.REGION_ID} ;;
}
}


view: CAT_REGION__972d97da_b855_43a8_aa73_ef71bf5bf79b {
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


view: SUBS_RECHARGE__364f80fc_584d_4e44_883f_621ae70e75ad {
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