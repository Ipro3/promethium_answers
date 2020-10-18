
connection:"pmdevpresto"


explore: null__adea7cb0_f6a4_4422_8c8d_eca6522b4035 {

join: null__9419247c_41a8_405e_907a_ed9e91d8fcd3 {
 relationship: one_to_one
 sql_on: ${null__adea7cb0_f6a4_4422_8c8d_eca6522b4035.f1} = ${null__9419247c_41a8_405e_907a_ed9e91d8fcd3.f2} ;;
}
}


view: null__9419247c_41a8_405e_907a_ed9e91d8fcd3 {
sql_table_name:catalog1.db1.table2 ;;
dimension: f0 {
 type: string
 sql: ${TABLE}.f0;;
}
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
dimension: f2 {
 type: string
 sql: ${TABLE}.f2;;
}
}


view: null__adea7cb0_f6a4_4422_8c8d_eca6522b4035 {
sql_table_name:catalog1.db1.table1 ;;
dimension: f0 {
 type: string
 sql: ${TABLE}.f0;;
}
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
dimension: f2 {
 type: string
 sql: ${TABLE}.f2;;
}
}