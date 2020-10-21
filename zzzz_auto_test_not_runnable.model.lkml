
connection:"pmdevpresto"


explore: table1__d0d8e1e5_833b_4748_a176_13280c20663a {

join: table2__d9092e12_dfc4_40d2_9a68_e01a0d5e2734 {
 relationship: one_to_one
 sql_on: ${table1__d0d8e1e5_833b_4748_a176_13280c20663a.f1} = ${table2__d9092e12_dfc4_40d2_9a68_e01a0d5e2734.f2} ;;
}
}


view: table2__d9092e12_dfc4_40d2_9a68_e01a0d5e2734 {
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


view: table1__d0d8e1e5_833b_4748_a176_13280c20663a {
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