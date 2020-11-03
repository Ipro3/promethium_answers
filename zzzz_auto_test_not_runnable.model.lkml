
connection:"pmdevpresto"


explore: table1__7f2f2961_d71f_40cb_bd12_1ef75657af08 {

join: table2__5d34321e_af80_4598_abff_f34b8ad871fd {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__7f2f2961_d71f_40cb_bd12_1ef75657af08.f1} = ${table2__5d34321e_af80_4598_abff_f34b8ad871fd.f2} ;;
}
}


view: table1__7f2f2961_d71f_40cb_bd12_1ef75657af08 {
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


view: table2__5d34321e_af80_4598_abff_f34b8ad871fd {
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