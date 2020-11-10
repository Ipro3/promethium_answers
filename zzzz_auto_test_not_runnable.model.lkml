
connection:"pmdevpresto"


explore: table1__8372b143_4de4_4ea7_8f3a_89a7c8c16c7b {

join: table2__19e1bed9_a5c9_438a_a4f2_8a3ecf1bc85b {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__8372b143_4de4_4ea7_8f3a_89a7c8c16c7b.f1} = ${table2__19e1bed9_a5c9_438a_a4f2_8a3ecf1bc85b.f2} ;;
}
}


view: table1__8372b143_4de4_4ea7_8f3a_89a7c8c16c7b {
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


view: table2__19e1bed9_a5c9_438a_a4f2_8a3ecf1bc85b {
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