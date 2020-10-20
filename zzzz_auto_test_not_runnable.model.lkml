
connection:"pmdevpresto"


explore: table1__443ffcee_21ff_4c0a_8284_fcb993d4c82a {

join: table2__e3416223_eab5_43dd_9628_883970b66f06 {
 relationship: one_to_one
 sql_on: ${table1__443ffcee_21ff_4c0a_8284_fcb993d4c82a.f1} = ${table2__e3416223_eab5_43dd_9628_883970b66f06.f2} ;;
}
}


view: table1__443ffcee_21ff_4c0a_8284_fcb993d4c82a {
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


view: table2__e3416223_eab5_43dd_9628_883970b66f06 {
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