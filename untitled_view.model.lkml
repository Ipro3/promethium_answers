
connection: "pmdevpresto"


explore: customers__e3664b20_4b6a_4b44_a5bf_7029418faa92 {

}


view: customers__e3664b20_4b6a_4b44_a5bf_7029418faa92 {
sql_table_name:ds_mysql.promethium.customers ;;
dimension: customer_id {
 type: string
 sql: ${TABLE}.customer_id;;
}
dimension: customer_name {
 type: string
 sql: ${TABLE}.customer_name;;
}
dimension: customer_short_name {
 type: string
 sql: ${TABLE}.customer_short_name;;
}
dimension: date_founded {
 type: string
 sql: ${TABLE}.date_founded;;
}
dimension: date_closed {
 type: string
 sql: ${TABLE}.date_closed;;
}
dimension: group_only_flag {
 type: string
 sql: ${TABLE}.group_only_flag;;
}
dimension: other_customer_details {
 type: string
 sql: ${TABLE}.other_customer_details;;
}
}