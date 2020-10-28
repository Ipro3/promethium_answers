
connection:"pmdevpresto"


explore: table1__123038cd_a40d_42b0_8e33_b17329bb3909 {

join: table2__d9fcaf53_f76a_4565_8653_5b34feb35495 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__123038cd_a40d_42b0_8e33_b17329bb3909.f1} = ${table2__d9fcaf53_f76a_4565_8653_5b34feb35495.f2} ;;
}
}


view: table2__d9fcaf53_f76a_4565_8653_5b34feb35495 {
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


view: table1__123038cd_a40d_42b0_8e33_b17329bb3909 {
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