
connection:"pmdevpresto"


explore: table1__7679475a_9def_498c_a9f8_08d75cbcb0cd {

join: table2__2fd2a778_5f71_4696_a495_c4ea417d7eed {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__7679475a_9def_498c_a9f8_08d75cbcb0cd.f1} = ${table2__2fd2a778_5f71_4696_a495_c4ea417d7eed.f2} ;;
}
}


view: table2__2fd2a778_5f71_4696_a495_c4ea417d7eed {
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


view: table1__7679475a_9def_498c_a9f8_08d75cbcb0cd {
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