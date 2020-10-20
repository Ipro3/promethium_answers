
connection:"pmdevpresto"


explore: table1__ccc5a348_9def_49fd_93db_967f84f48165 {

join: table2__ea259f38_b55a_44ae_b447_8aa72cac8ea4 {
 relationship: one_to_one
 sql_on: ${table1__ccc5a348_9def_49fd_93db_967f84f48165.f1} = ${table2__ea259f38_b55a_44ae_b447_8aa72cac8ea4.f2} ;;
}
}


view: table2__ea259f38_b55a_44ae_b447_8aa72cac8ea4 {
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


view: table1__ccc5a348_9def_49fd_93db_967f84f48165 {
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