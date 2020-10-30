
connection:"pmdevpresto"


explore: table1__86ba1407_f790_4349_9c01_0b73a3f5c58d {

join: table2__1e1f6d5c_9023_404b_8116_3216ac1bb716 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__86ba1407_f790_4349_9c01_0b73a3f5c58d.f1} = ${table2__1e1f6d5c_9023_404b_8116_3216ac1bb716.f2} ;;
}
}


view: table2__1e1f6d5c_9023_404b_8116_3216ac1bb716 {
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


view: table1__86ba1407_f790_4349_9c01_0b73a3f5c58d {
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