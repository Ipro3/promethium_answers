
connection:"pmdevpresto"


explore: table1__9f76d15e_af02_402b_85a2_008824fd735d {

join: table2__7076d36d_d1d8_4dd2_a113_f8816bcc917b {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__9f76d15e_af02_402b_85a2_008824fd735d.f1} = ${table2__7076d36d_d1d8_4dd2_a113_f8816bcc917b.f2} ;;
}
}


view: table1__9f76d15e_af02_402b_85a2_008824fd735d {
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


view: table2__7076d36d_d1d8_4dd2_a113_f8816bcc917b {
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