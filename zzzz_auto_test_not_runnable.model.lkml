
connection:"pmdevpresto"


explore: table1__6c90d49f_c82d_423f_a668_59acde58fa03 {

join: table2__6c025ed0_d9a5_4039_820b_e4ed13c167d5 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__6c90d49f_c82d_423f_a668_59acde58fa03.f1} = ${table2__6c025ed0_d9a5_4039_820b_e4ed13c167d5.f2} ;;
}
}


view: table2__6c025ed0_d9a5_4039_820b_e4ed13c167d5 {
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


view: table1__6c90d49f_c82d_423f_a668_59acde58fa03 {
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