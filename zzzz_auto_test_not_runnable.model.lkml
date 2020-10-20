
connection:"pmdevpresto"


explore: table1__8543a88d_35bb_4f2e_bb29_752f723421a2 {

join: table2__8654c3c7_e771_413c_948c_1bbf3926166a {
 relationship: one_to_one
 sql_on: ${table1__8543a88d_35bb_4f2e_bb29_752f723421a2.f1} = ${table2__8654c3c7_e771_413c_948c_1bbf3926166a.f2} ;;
}
}


view: table2__8654c3c7_e771_413c_948c_1bbf3926166a {
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


view: table1__8543a88d_35bb_4f2e_bb29_752f723421a2 {
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