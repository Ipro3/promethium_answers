
connection:"pmdevpresto"


explore: table1__489a2748_1028_434f_b50f_567db39a59f1 {

join: table2__9f5ad73d_d37d_4c53_b20c_9095573ccfca {
 relationship: one_to_one
 sql_on: ${table1__489a2748_1028_434f_b50f_567db39a59f1.f1} = ${table2__9f5ad73d_d37d_4c53_b20c_9095573ccfca.f2} ;;
}
}


view: table2__9f5ad73d_d37d_4c53_b20c_9095573ccfca {
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


view: table1__489a2748_1028_434f_b50f_567db39a59f1 {
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