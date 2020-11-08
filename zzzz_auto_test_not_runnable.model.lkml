
connection:"pmdevpresto"


explore: table1__caa47577_2206_4f87_8b66_c84f2ad8b14b {

join: table2__88c46f11_06c5_422c_b2ee_84351e2473f6 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__caa47577_2206_4f87_8b66_c84f2ad8b14b.f1} = ${table2__88c46f11_06c5_422c_b2ee_84351e2473f6.f2} ;;
}
}


view: table2__88c46f11_06c5_422c_b2ee_84351e2473f6 {
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


view: table1__caa47577_2206_4f87_8b66_c84f2ad8b14b {
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