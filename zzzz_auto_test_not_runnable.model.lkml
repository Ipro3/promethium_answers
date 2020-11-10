
connection:"pmdevpresto"


explore: table1__d12b550f_bf1e_4886_86b7_40e72b8a5749 {

join: table2__ce9d5e73_47f5_4954_a0dd_e937ad1f0a51 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__d12b550f_bf1e_4886_86b7_40e72b8a5749.f1} = ${table2__ce9d5e73_47f5_4954_a0dd_e937ad1f0a51.f2} ;;
}
}


view: table1__d12b550f_bf1e_4886_86b7_40e72b8a5749 {
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


view: table2__ce9d5e73_47f5_4954_a0dd_e937ad1f0a51 {
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