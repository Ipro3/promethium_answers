
connection:"pmdevpresto"


explore: table1__5ec2dff1_84b2_4004_9cef_21df7ed29c12 {

join: table2__497aa701_9852_444d_9d51_ed81ebb4798c {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__5ec2dff1_84b2_4004_9cef_21df7ed29c12.f1} = ${table2__497aa701_9852_444d_9d51_ed81ebb4798c.f2} ;;
}
}


view: table1__5ec2dff1_84b2_4004_9cef_21df7ed29c12 {
sql_table_name:catalog1.db1.table1 ;;
dimension: f0 {
 sql: ${TABLE}.f0;;
}
dimension: f1 {
 sql: ${TABLE}.f1;;
}
dimension: f2 {
 sql: ${TABLE}.f2;;
}
}


view: table2__497aa701_9852_444d_9d51_ed81ebb4798c {
sql_table_name:catalog1.db1.table2 ;;
dimension: f0 {
 sql: ${TABLE}.f0;;
}
dimension: f1 {
 sql: ${TABLE}.f1;;
}
dimension: f2 {
 sql: ${TABLE}.f2;;
}
}