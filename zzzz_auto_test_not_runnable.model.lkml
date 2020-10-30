
connection:"pmdevpresto"


explore: table1__bda46a1b_6ee2_4250_9024_f520417275e5 {

join: table2__cca802c7_f04a_4c9f_af85_db37f2174f17 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__bda46a1b_6ee2_4250_9024_f520417275e5.f1} = ${table2__cca802c7_f04a_4c9f_af85_db37f2174f17.f2} ;;
}
}


view: table1__bda46a1b_6ee2_4250_9024_f520417275e5 {
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


view: table2__cca802c7_f04a_4c9f_af85_db37f2174f17 {
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