
connection:"pmdevpresto"


explore: table1__575421e4_1250_46ef_bd45_1441059aafc5 {

join: table2__911d8bd3_dba4_47e1_9da2_6a7d034d2867 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__575421e4_1250_46ef_bd45_1441059aafc5.f1} = ${table2__911d8bd3_dba4_47e1_9da2_6a7d034d2867.f2} ;;
}
}


view: table1__575421e4_1250_46ef_bd45_1441059aafc5 {
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


view: table2__911d8bd3_dba4_47e1_9da2_6a7d034d2867 {
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