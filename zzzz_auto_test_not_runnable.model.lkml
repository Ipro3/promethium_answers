
connection:"pmdevpresto"


explore: table1__ded1fb1f_cfef_4f6d_b5f1_61e9e9b65648 {

join: table2__03f79c29_f1e7_452a_b420_fbdf851b9442 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__ded1fb1f_cfef_4f6d_b5f1_61e9e9b65648.f1} = ${table2__03f79c29_f1e7_452a_b420_fbdf851b9442.f2} ;;
}
}


view: table1__ded1fb1f_cfef_4f6d_b5f1_61e9e9b65648 {
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
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [f0, f1, f2]
}
}


view: table2__03f79c29_f1e7_452a_b420_fbdf851b9442 {
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
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [f0, f1, f2]
}
}