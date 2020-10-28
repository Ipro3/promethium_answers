
connection:"pmdevpresto"


explore: table1__4d63bc82_b90e_4d7e_b4bc_3e1c5702dd25 {

join: table2__917bd7bc_dc5f_4dca_9db3_a542f64a31bf {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__4d63bc82_b90e_4d7e_b4bc_3e1c5702dd25.f1} = ${table2__917bd7bc_dc5f_4dca_9db3_a542f64a31bf.f2} ;;
}
}


view: table2__917bd7bc_dc5f_4dca_9db3_a542f64a31bf {
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


view: table1__4d63bc82_b90e_4d7e_b4bc_3e1c5702dd25 {
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