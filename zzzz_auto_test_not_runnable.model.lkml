
connection:"pmdevpresto"


explore: table1__d2a1fb9f_7c60_4cac_9b20_f46fca0d04fd {

join: table2__8d0c6d6a_1dc0_423f_9de7_35f937279636 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__d2a1fb9f_7c60_4cac_9b20_f46fca0d04fd.f1} = ${table2__8d0c6d6a_1dc0_423f_9de7_35f937279636.f2} ;;
}
}


view: table1__d2a1fb9f_7c60_4cac_9b20_f46fca0d04fd {
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


view: table2__8d0c6d6a_1dc0_423f_9de7_35f937279636 {
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