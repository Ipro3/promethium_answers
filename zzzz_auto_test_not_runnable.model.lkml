
connection:"pmdevpresto"


explore: table1__7c464dee_ae9f_4dd0_8290_0d274075a28f {

join: table2__3c6af44c_7547_49e3_8524_ee8cf2feb0bd {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__7c464dee_ae9f_4dd0_8290_0d274075a28f.f1} = ${table2__3c6af44c_7547_49e3_8524_ee8cf2feb0bd.f2} ;;
}
}


view: table1__7c464dee_ae9f_4dd0_8290_0d274075a28f {
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


view: table2__3c6af44c_7547_49e3_8524_ee8cf2feb0bd {
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