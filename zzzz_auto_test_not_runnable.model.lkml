
connection:"pmdevpresto"


explore: table1__f07042f8_a60b_4626_a3b5_faba31408390 {

join: table2__337451f7_fd33_4156_9a84_dfed27f11634 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__f07042f8_a60b_4626_a3b5_faba31408390.f1} = ${table2__337451f7_fd33_4156_9a84_dfed27f11634.f2} ;;
}
}


view: table1__f07042f8_a60b_4626_a3b5_faba31408390 {
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


view: table2__337451f7_fd33_4156_9a84_dfed27f11634 {
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