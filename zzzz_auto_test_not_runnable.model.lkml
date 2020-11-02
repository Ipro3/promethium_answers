
connection:"pmdevpresto"


explore: table1__1494b7cf_80a6_4c56_b30e_23e17e563827 {

join: table2__a7d7f7c6_e61a_4e0c_a5e0_68001cc7f759 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__1494b7cf_80a6_4c56_b30e_23e17e563827.f1} = ${table2__a7d7f7c6_e61a_4e0c_a5e0_68001cc7f759.f2} ;;
}
}


view: table1__1494b7cf_80a6_4c56_b30e_23e17e563827 {
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


view: table2__a7d7f7c6_e61a_4e0c_a5e0_68001cc7f759 {
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