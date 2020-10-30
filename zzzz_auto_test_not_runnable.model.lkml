
connection:"pmdevpresto"


explore: table1__efd9b1a9_ee94_479a_a03b_bc171544b86f {

join: table2__cb93bf5f_f2e4_4e0f_b3fc_eddecc348e8b {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__efd9b1a9_ee94_479a_a03b_bc171544b86f.f1} = ${table2__cb93bf5f_f2e4_4e0f_b3fc_eddecc348e8b.f2} ;;
}
}


view: table2__cb93bf5f_f2e4_4e0f_b3fc_eddecc348e8b {
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


view: table1__efd9b1a9_ee94_479a_a03b_bc171544b86f {
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