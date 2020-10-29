
connection:"pmdevpresto"


explore: table1__6fc722e5_f406_4654_a175_cd599071c74e {

join: table2__27e2b0ef_10a6_4c8b_913e_0dfd5c2dfb05 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__6fc722e5_f406_4654_a175_cd599071c74e.f1} = ${table2__27e2b0ef_10a6_4c8b_913e_0dfd5c2dfb05.f2} ;;
}
}


view: table1__6fc722e5_f406_4654_a175_cd599071c74e {
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


view: table2__27e2b0ef_10a6_4c8b_913e_0dfd5c2dfb05 {
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