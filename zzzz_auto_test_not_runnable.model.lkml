
connection:"pmdevpresto"


explore: table1__71dcc06a_0a6d_4b78_a266_5073665a01a0 {

join: table2__bb07e9a1_c869_4fd2_abc8_041a701842eb {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__71dcc06a_0a6d_4b78_a266_5073665a01a0.f1} = ${table2__bb07e9a1_c869_4fd2_abc8_041a701842eb.f2} ;;
}
}


view: table1__71dcc06a_0a6d_4b78_a266_5073665a01a0 {
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


view: table2__bb07e9a1_c869_4fd2_abc8_041a701842eb {
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