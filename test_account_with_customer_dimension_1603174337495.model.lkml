
connection:"pmdevpresto"


explore: customer_dimension__4f9c6de5_3b8d_4bc1_ae56_f5650d17ea7c {

}


view: customer_dimension__4f9c6de5_3b8d_4bc1_ae56_f5650d17ea7c {
sql_table_name:hiveg3.promethium.customer_dimension ;;
measure: customer_id {
type:count_distinct
 sql: ${TABLE}.customer_id;;
}
dimension: customer_name {
 sql: ${TABLE}.customer_name;;
}
dimension: customer_address {
 sql: ${TABLE}.customer_address;;
}
dimension: other_details {
 sql: ${TABLE}.other_details;;
}
}