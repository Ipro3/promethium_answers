
connection:"pmdevpresto"


explore: table1__8b867cb9_aaa7_4e93_8b7d_efd60fb1f368 {

join: table2__488e4f7d_b6e6_47b8_9b07_c9800d790b4a {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__8b867cb9_aaa7_4e93_8b7d_efd60fb1f368.f1} = ${table2__488e4f7d_b6e6_47b8_9b07_c9800d790b4a.f2} ;;
}
}


view: table2__488e4f7d_b6e6_47b8_9b07_c9800d790b4a {
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


view: table1__8b867cb9_aaa7_4e93_8b7d_efd60fb1f368 {
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