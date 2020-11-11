
connection:"pmdevpresto"


explore: table1__b8f9bcee_bb97_4c4b_a48f_fc6b4cd94d08 {

join: table2__032a287e_1744_4a80_b9e5_273c322f74e4 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__b8f9bcee_bb97_4c4b_a48f_fc6b4cd94d08.f1} = ${table2__032a287e_1744_4a80_b9e5_273c322f74e4.f2} ;;
}
}


view: table2__032a287e_1744_4a80_b9e5_273c322f74e4 {
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


view: table1__b8f9bcee_bb97_4c4b_a48f_fc6b4cd94d08 {
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