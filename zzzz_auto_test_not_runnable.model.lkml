
connection:"pmdevpresto"


explore: table1__e9010c00_709b_4e83_928e_e88274bea5e8 {

join: table2__ed3b0f03_bb23_49a2_a0dd_27904108af2f {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__e9010c00_709b_4e83_928e_e88274bea5e8.f1} = ${table2__ed3b0f03_bb23_49a2_a0dd_27904108af2f.f2} ;;
}
}


view: table2__ed3b0f03_bb23_49a2_a0dd_27904108af2f {
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


view: table1__e9010c00_709b_4e83_928e_e88274bea5e8 {
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