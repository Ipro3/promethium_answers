
connection:"pmdevpresto"


explore: table1__72240cb5_5b8d_400f_a359_bb9285bdc1f4 {

join: table2__7411baf5_de53_4764_97ca_4cecd5a88891 {
 relationship: one_to_one
 sql_on: ${table1__72240cb5_5b8d_400f_a359_bb9285bdc1f4.f1} = ${table2__7411baf5_de53_4764_97ca_4cecd5a88891.f2} ;;
}
}


view: table1__72240cb5_5b8d_400f_a359_bb9285bdc1f4 {
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


view: table2__7411baf5_de53_4764_97ca_4cecd5a88891 {
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