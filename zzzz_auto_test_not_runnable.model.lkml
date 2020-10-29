
connection:"pmdevpresto"


explore: table1__6d3a70fe_e00c_4d6d_a862_da0b87828d1e {

join: table2__8fbe54e9_1802_4054_b03f_ca83b1f12ffc {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__6d3a70fe_e00c_4d6d_a862_da0b87828d1e.f1} = ${table2__8fbe54e9_1802_4054_b03f_ca83b1f12ffc.f2} ;;
}
}


view: table2__8fbe54e9_1802_4054_b03f_ca83b1f12ffc {
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


view: table1__6d3a70fe_e00c_4d6d_a862_da0b87828d1e {
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