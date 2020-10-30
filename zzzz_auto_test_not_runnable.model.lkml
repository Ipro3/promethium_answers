
connection:"pmdevpresto"


explore: table1__86804412_e488_444e_bd10_b017a989f989 {

join: table2__d69d37fa_7a43_46df_a38c_cedc0f7573f3 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__86804412_e488_444e_bd10_b017a989f989.f1} = ${table2__d69d37fa_7a43_46df_a38c_cedc0f7573f3.f2} ;;
}
}


view: table2__d69d37fa_7a43_46df_a38c_cedc0f7573f3 {
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


view: table1__86804412_e488_444e_bd10_b017a989f989 {
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