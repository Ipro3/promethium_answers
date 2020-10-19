
connection:"pmdevpresto"


explore: table1__24924853_c29c_4260_8c8c_e406e33bdafa {

join: table2__ede9e420_fc15_46a8_af3e_50157e4a43f7 {
 relationship: one_to_one
 sql_on: ${table1__24924853_c29c_4260_8c8c_e406e33bdafa.f1} = ${table2__ede9e420_fc15_46a8_af3e_50157e4a43f7.f2} ;;
}
}


view: table2__ede9e420_fc15_46a8_af3e_50157e4a43f7 {
sql_table_name:catalog1.db1.table2 ;;
dimension: f0 {
 type: string
 sql: ${TABLE}.f0;;
}
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
dimension: f2 {
 type: string
 sql: ${TABLE}.f2;;
}
}


view: table1__24924853_c29c_4260_8c8c_e406e33bdafa {
sql_table_name:catalog1.db1.table1 ;;
dimension: f0 {
 type: string
 sql: ${TABLE}.f0;;
}
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
dimension: f2 {
 type: string
 sql: ${TABLE}.f2;;
}
}