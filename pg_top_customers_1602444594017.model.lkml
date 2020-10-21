
connection:"pmdevpresto"


explore: SUBSCRIPTIONS__a2e1cb46_d9ef_4c6b_9eae_901b0819b700 {

join: Customers__e31b2413_d4ba_4ff6_bce6_3180304f9d78 {
 relationship: one_to_one
 sql_on: ${SUBSCRIPTIONS__a2e1cb46_d9ef_4c6b_9eae_901b0819b700.CUSTOMER_ID} = ${Customers__e31b2413_d4ba_4ff6_bce6_3180304f9d78.customer_id} ;;
}
}


view: SUBSCRIPTIONS__a2e1cb46_d9ef_4c6b_9eae_901b0819b700 {
sql_table_name:teratest.promethium.SUBSCRIPTIONS ;;
measure: SUBSCRIPTION_ID {
type:count_distinct
 sql: ${TABLE}.SUBSCRIPTION_ID;;
}
dimension: CUSTOMER_ID {
 sql: ${TABLE}.CUSTOMER_ID;;
}
dimension: START_TIME {
 sql: ${TABLE}.START_TIME;;
}
dimension: END_TIME {
 sql: ${TABLE}.END_TIME;;
}
measure: CITY_ID {
type:count_distinct
 sql: ${TABLE}.CITY_ID;;
}
dimension: SUBSCRIPTION_PARAMETERS {
 sql: ${TABLE}.SUBSCRIPTION_PARAMETERS;;
}
dimension: ACTIVE {
 sql: ${TABLE}.ACTIVE;;
}
dimension: TIME_SPENT {
 sql: ${TABLE}.TIME_SPENT;;
}
}


view: Customers__e31b2413_d4ba_4ff6_bce6_3180304f9d78 {
sql_table_name:teratest.promethium.Customers ;;
dimension: customer_id {
 sql: ${TABLE}.customer_id;;
}
dimension: customer_name {
 sql: ${TABLE}.customer_name;;
}
dimension: customer_info {
 sql: ${TABLE}.customer_info;;
}
}