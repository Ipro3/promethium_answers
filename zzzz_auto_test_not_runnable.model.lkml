
connection:"pmdevpresto"


explore: table1__2a6569b5_6447_4443_8b28_ff587ab8d9ed {

join: table2__12dd1270_3fc5_4646_a125_c2852336e981 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__2a6569b5_6447_4443_8b28_ff587ab8d9ed.f1} = ${table2__12dd1270_3fc5_4646_a125_c2852336e981.f2} ;;
}
}


view: table1__2a6569b5_6447_4443_8b28_ff587ab8d9ed {
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


view: table2__12dd1270_3fc5_4646_a125_c2852336e981 {
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