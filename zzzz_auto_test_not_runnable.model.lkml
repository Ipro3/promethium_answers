
connection:"pmdevpresto"


explore: table1__3616f7d7_eeaa_4800_a51b_4fc3d3dbe0d8 {

join: table2__8d47fe17_aab9_4786_bd40_67696b9b1197 {
 relationship: one_to_one
 sql_on: ${table1__3616f7d7_eeaa_4800_a51b_4fc3d3dbe0d8.f1} = ${table2__8d47fe17_aab9_4786_bd40_67696b9b1197.f2} ;;
}
}


view: table1__3616f7d7_eeaa_4800_a51b_4fc3d3dbe0d8 {
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


view: table2__8d47fe17_aab9_4786_bd40_67696b9b1197 {
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