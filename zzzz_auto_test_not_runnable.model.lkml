
connection:"pmdevpresto"


explore: table1__a1df9f86_d096_4040_abcd_92f3225af306 {

join: table2__1ceab072_61e7_4747_a7b9_4f9cc48bfb21 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__a1df9f86_d096_4040_abcd_92f3225af306.f1} = ${table2__1ceab072_61e7_4747_a7b9_4f9cc48bfb21.f2} ;;
}
}


view: table2__1ceab072_61e7_4747_a7b9_4f9cc48bfb21 {
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


view: table1__a1df9f86_d096_4040_abcd_92f3225af306 {
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