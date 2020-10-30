
connection:"pmdevpresto"


explore: table1__d5e5a14c_b846_4e94_9f4a_aa9cf9f3a52b {

join: table2__3c0bce8a_735f_4fd7_b09c_a9010c90f227 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__d5e5a14c_b846_4e94_9f4a_aa9cf9f3a52b.f1} = ${table2__3c0bce8a_735f_4fd7_b09c_a9010c90f227.f2} ;;
}
}


view: table1__d5e5a14c_b846_4e94_9f4a_aa9cf9f3a52b {
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


view: table2__3c0bce8a_735f_4fd7_b09c_a9010c90f227 {
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