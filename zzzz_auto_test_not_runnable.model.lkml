
connection:"pmdevpresto"


explore: table1__3ada6d5a_3fd5_458c_a42a_ad72245492e9 {

join: table2__0ac61e1f_5c39_41b4_a1d4_dae3b58858c0 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__3ada6d5a_3fd5_458c_a42a_ad72245492e9.f1} = ${table2__0ac61e1f_5c39_41b4_a1d4_dae3b58858c0.f2} ;;
}
}


view: table1__3ada6d5a_3fd5_458c_a42a_ad72245492e9 {
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


view: table2__0ac61e1f_5c39_41b4_a1d4_dae3b58858c0 {
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