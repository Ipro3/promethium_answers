
connection:"pmdevpresto"


explore: table1__ad640ea0_b8f4_4698_aaad_23632ef560f1 {

join: table2__feef6870_31d7_4fa9_9af5_d4096461754f {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__ad640ea0_b8f4_4698_aaad_23632ef560f1.f1} = ${table2__feef6870_31d7_4fa9_9af5_d4096461754f.f2} ;;
}
}


view: table2__feef6870_31d7_4fa9_9af5_d4096461754f {
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


view: table1__ad640ea0_b8f4_4698_aaad_23632ef560f1 {
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