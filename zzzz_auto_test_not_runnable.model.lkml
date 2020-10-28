
connection:"pmdevpresto"


explore: table1__08e170a7_6c98_4c78_9e43_5793991ab6a6 {

join: table2__1841756a_6e47_485c_b76c_bab765c8486e {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__08e170a7_6c98_4c78_9e43_5793991ab6a6.f1} = ${table2__1841756a_6e47_485c_b76c_bab765c8486e.f2} ;;
}
}


view: table2__1841756a_6e47_485c_b76c_bab765c8486e {
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


view: table1__08e170a7_6c98_4c78_9e43_5793991ab6a6 {
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