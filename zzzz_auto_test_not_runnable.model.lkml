
connection:"pmdevpresto"


explore: table1__15ab2ea9_c73c_4804_a0e0_8a36234f6564 {

join: table2__023f47a6_d4bb_482d_aaf2_f61983d0dc05 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__15ab2ea9_c73c_4804_a0e0_8a36234f6564.f1} = ${table2__023f47a6_d4bb_482d_aaf2_f61983d0dc05.f2} ;;
}
}


view: table2__023f47a6_d4bb_482d_aaf2_f61983d0dc05 {
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


view: table1__15ab2ea9_c73c_4804_a0e0_8a36234f6564 {
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