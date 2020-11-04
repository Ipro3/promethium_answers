
connection:"pmdevpresto"


explore: table1__6b9826cc_f9f7_4bd9_b71b_49464ead747e {

join: table2__ba93a38d_597a_4f38_82fc_736ffe474bbe {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__6b9826cc_f9f7_4bd9_b71b_49464ead747e.f1} = ${table2__ba93a38d_597a_4f38_82fc_736ffe474bbe.f2} ;;
}
}


view: table1__6b9826cc_f9f7_4bd9_b71b_49464ead747e {
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


view: table2__ba93a38d_597a_4f38_82fc_736ffe474bbe {
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