
connection:"pmdevpresto"


explore: table1__4e763550_46a5_42ec_bca0_01f03cbe8e9a {

join: table2__52b0ac02_c573_4a0d_a7fb_ea0cd5c7b7ee {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__4e763550_46a5_42ec_bca0_01f03cbe8e9a.f1} = ${table2__52b0ac02_c573_4a0d_a7fb_ea0cd5c7b7ee.f2} ;;
}
}


view: table2__52b0ac02_c573_4a0d_a7fb_ea0cd5c7b7ee {
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


view: table1__4e763550_46a5_42ec_bca0_01f03cbe8e9a {
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