
connection:"pmdevpresto"


explore: table1__cf245a38_8721_4b84_b639_b4ca857ba1dd {

join: table2__43a58ee8_c814_4c59_99b7_4c50051fc729 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__cf245a38_8721_4b84_b639_b4ca857ba1dd.f1} = ${table2__43a58ee8_c814_4c59_99b7_4c50051fc729.f2} ;;
}
}


view: table1__cf245a38_8721_4b84_b639_b4ca857ba1dd {
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


view: table2__43a58ee8_c814_4c59_99b7_4c50051fc729 {
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