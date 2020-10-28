
connection:"pmdevpresto"


explore: table1__d4168e16_7e30_4bab_a13a_110dbb7cd2f4 {

join: table2__6bb3a5da_fe10_440a_9e6f_c0bf7bba5fa6 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__d4168e16_7e30_4bab_a13a_110dbb7cd2f4.f1} = ${table2__6bb3a5da_fe10_440a_9e6f_c0bf7bba5fa6.f2} ;;
}
}


view: table1__d4168e16_7e30_4bab_a13a_110dbb7cd2f4 {
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


view: table2__6bb3a5da_fe10_440a_9e6f_c0bf7bba5fa6 {
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