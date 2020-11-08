
connection:"pmdevpresto"


explore: table1__5fb4a144_6d6f_4402_b3a8_624dfbf84392 {

join: table2__a326e132_eecf_4138_8dde_e53e9127ca0b {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__5fb4a144_6d6f_4402_b3a8_624dfbf84392.f1} = ${table2__a326e132_eecf_4138_8dde_e53e9127ca0b.f2} ;;
}
}


view: table1__5fb4a144_6d6f_4402_b3a8_624dfbf84392 {
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


view: table2__a326e132_eecf_4138_8dde_e53e9127ca0b {
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