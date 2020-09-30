
connection: "pmdevpresto"


explore: customer_dimension__8b670318_5a59_4d8c_833e_c01791726719 {

join: dim_channel__5bd3571c_2be3_43db_b9aa_fe2329eeb5c4 {
 relationship: one_to_one
 sql_on: ${customer_dimension__8b670318_5a59_4d8c_833e_c01791726719.customer_dimension.customer_name} = ${dim_channel__5bd3571c_2be3_43db_b9aa_fe2329eeb5c4.dim_channel.col0} ;;
}
}


view: customer_dimension__8b670318_5a59_4d8c_833e_c01791726719 {
sql_table_name:hivepublic.promethium.customer_dimension ;;
dimension: customer_id {
 type: number
 sql: ${TABLE}.customer_id;;
}
dimension: customer_name {
 type: string
 sql: ${TABLE}.customer_name;;
}
dimension: customer_address {
 type: string
 sql: ${TABLE}.customer_address;;
}
dimension: other_details {
 type: string
 sql: ${TABLE}.other_details;;
}
}


view: dim_channel__5bd3571c_2be3_43db_b9aa_fe2329eeb5c4 {
sql_table_name:hive.isaktest.dim_channel ;;
dimension: col0 {
 type: string
 sql: ${TABLE}.col0;;
}
dimension: col1 {
 type: string
 sql: ${TABLE}.col1;;
}
dimension: col2 {
 type: string
 sql: ${TABLE}.col2;;
}
dimension: col3 {
 type: string
 sql: ${TABLE}.col3;;
}
dimension: col4 {
 type: string
 sql: ${TABLE}.col4;;
}
dimension: col5 {
 type: string
 sql: ${TABLE}.col5;;
}
dimension: col6 {
 type: string
 sql: ${TABLE}.col6;;
}
dimension: col7 {
 type: string
 sql: ${TABLE}.col7;;
}
dimension: col8 {
 type: string
 sql: ${TABLE}.col8;;
}
dimension: col9 {
 type: string
 sql: ${TABLE}.col9;;
}
dimension: col10 {
 type: string
 sql: ${TABLE}.col10;;
}
dimension: col11 {
 type: string
 sql: ${TABLE}.col11;;
}
dimension: col12 {
 type: string
 sql: ${TABLE}.col12;;
}
dimension: col13 {
 type: string
 sql: ${TABLE}.col13;;
}
dimension: col14 {
 type: string
 sql: ${TABLE}.col14;;
}
dimension: col15 {
 type: string
 sql: ${TABLE}.col15;;
}
dimension: col16 {
 type: string
 sql: ${TABLE}.col16;;
}
dimension: col17 {
 type: string
 sql: ${TABLE}.col17;;
}
}