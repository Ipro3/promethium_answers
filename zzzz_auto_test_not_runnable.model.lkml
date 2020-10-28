
connection:"pmdevpresto"


explore: table1__d4a95498_fead_4e31_9734_c6898b7ffeee {

join: table2__7d0d2623_0c6a_43f5_82bc_c210bcb5c044 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__d4a95498_fead_4e31_9734_c6898b7ffeee.f1} = ${table2__7d0d2623_0c6a_43f5_82bc_c210bcb5c044.f2} ;;
}
}


view: table1__d4a95498_fead_4e31_9734_c6898b7ffeee {
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


view: table2__7d0d2623_0c6a_43f5_82bc_c210bcb5c044 {
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