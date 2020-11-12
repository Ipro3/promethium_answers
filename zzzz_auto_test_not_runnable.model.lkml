
connection:"pmdevpresto"


explore: table1__2c48c579_47f1_4ba9_a9e9_7ef6d65c1138 {

join: table2__87478dc8_112d_4a99_8f5f_c1ee593fdbb6 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__2c48c579_47f1_4ba9_a9e9_7ef6d65c1138.f1} = ${table2__87478dc8_112d_4a99_8f5f_c1ee593fdbb6.f2} ;;
}
}


view: table2__87478dc8_112d_4a99_8f5f_c1ee593fdbb6 {
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


view: table1__2c48c579_47f1_4ba9_a9e9_7ef6d65c1138 {
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