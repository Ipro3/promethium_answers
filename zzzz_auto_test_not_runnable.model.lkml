
connection:"pmdevpresto"


explore: table1__fe654c2e_6cb3_4b5b_a66b_3abbd88cdce3 {

join: table2__81866ff9_f1b5_47b7_833f_0b26308d9740 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__fe654c2e_6cb3_4b5b_a66b_3abbd88cdce3.f1} = ${table2__81866ff9_f1b5_47b7_833f_0b26308d9740.f2} ;;
}
}


view: table1__fe654c2e_6cb3_4b5b_a66b_3abbd88cdce3 {
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


view: table2__81866ff9_f1b5_47b7_833f_0b26308d9740 {
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