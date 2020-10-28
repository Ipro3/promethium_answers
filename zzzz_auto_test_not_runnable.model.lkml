
connection:"pmdevpresto"


explore: table1__776e3a5e_25ed_40ce_b97d_157bda32626e {

join: table2__a1c381a5_26b8_409a_b5e9_dc46e7101229 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__776e3a5e_25ed_40ce_b97d_157bda32626e.f1} = ${table2__a1c381a5_26b8_409a_b5e9_dc46e7101229.f2} ;;
}
}


view: table1__776e3a5e_25ed_40ce_b97d_157bda32626e {
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


view: table2__a1c381a5_26b8_409a_b5e9_dc46e7101229 {
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