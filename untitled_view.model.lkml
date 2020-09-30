
connection: "pmdevpresto"


explore: customer_dimension__0d7f7bf9_68e7_417f_93f5_996d31c16f99 {

join: dim_channel__3e78cd45_5d50_4864_8b29_50c4b3f1df26 {
 relationship: one_to_one
 sql_on: ${customer_dimension__0d7f7bf9_68e7_417f_93f5_996d31c16f99.customer_dimension.customer_name} = ${dim_channel__3e78cd45_5d50_4864_8b29_50c4b3f1df26.dim_channel.col0} ;;
}
}


view: dim_channel__3e78cd45_5d50_4864_8b29_50c4b3f1df26 {
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


view: customer_dimension__0d7f7bf9_68e7_417f_93f5_996d31c16f99 {
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