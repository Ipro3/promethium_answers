
connection:"pmdevpresto"


explore: table1__f6e6394a_b6b1_4e94_8d7e_6ffb851b614e {

join: table2__286e2fcd_dd84_4eb5_a174_927661dbf512 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__f6e6394a_b6b1_4e94_8d7e_6ffb851b614e.f1} = ${table2__286e2fcd_dd84_4eb5_a174_927661dbf512.f2} ;;
}
}


view: table2__286e2fcd_dd84_4eb5_a174_927661dbf512 {
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


view: table1__f6e6394a_b6b1_4e94_8d7e_6ffb851b614e {
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