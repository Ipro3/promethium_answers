
connection:"pmdevpresto"


explore: table1__757d2eaa_6cc7_41f2_a421_82386c2a94fb {

join: table2__1f7e771d_58d8_4bab_8b4f_e54b6c0b444b {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__757d2eaa_6cc7_41f2_a421_82386c2a94fb.f1} = ${table2__1f7e771d_58d8_4bab_8b4f_e54b6c0b444b.f2} ;;
}
}


view: table1__757d2eaa_6cc7_41f2_a421_82386c2a94fb {
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


view: table2__1f7e771d_58d8_4bab_8b4f_e54b6c0b444b {
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