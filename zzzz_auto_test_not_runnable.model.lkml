
connection:"pmdevpresto"


explore: table1__69512728_be4f_48f2_a6ee_013ae045087f {

join: table2__37f33a5e_fd9b_4457_82eb_26811670d7b1 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__69512728_be4f_48f2_a6ee_013ae045087f.f1} = ${table2__37f33a5e_fd9b_4457_82eb_26811670d7b1.f2} ;;
}
}


view: table1__69512728_be4f_48f2_a6ee_013ae045087f {
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


view: table2__37f33a5e_fd9b_4457_82eb_26811670d7b1 {
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