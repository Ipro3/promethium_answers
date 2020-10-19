
connection:"pmdevpresto"


explore: table1__0d40c231_275f_42c9_b2f8_94afc646246b {

join: table2__180c3461_f0e8_40a6_8565_995ff9d6c8cf {
 relationship: one_to_one
 sql_on: ${table1__0d40c231_275f_42c9_b2f8_94afc646246b.f1} = ${table2__180c3461_f0e8_40a6_8565_995ff9d6c8cf.f2} ;;
}
}


view: table1__0d40c231_275f_42c9_b2f8_94afc646246b {
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


view: table2__180c3461_f0e8_40a6_8565_995ff9d6c8cf {
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