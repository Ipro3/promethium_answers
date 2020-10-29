
connection:"pmdevpresto"


explore: table1__37ff4db4_af51_4f77_873f_da648dc3fa9a {

join: table2__6c8c6929_bb14_443d_b1f8_0ac6bb156c56 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__37ff4db4_af51_4f77_873f_da648dc3fa9a.f1} = ${table2__6c8c6929_bb14_443d_b1f8_0ac6bb156c56.f2} ;;
}
}


view: table1__37ff4db4_af51_4f77_873f_da648dc3fa9a {
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


view: table2__6c8c6929_bb14_443d_b1f8_0ac6bb156c56 {
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