
connection:"pmdevpresto"


explore: table1__7150bdda_7efa_448c_bbf0_81a635e59f84 {

join: table2__0b8aa4c5_cdb6_45ed_9fce_35484abb8c68 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__7150bdda_7efa_448c_bbf0_81a635e59f84.f1} = ${table2__0b8aa4c5_cdb6_45ed_9fce_35484abb8c68.f2} ;;
}
}


view: table1__7150bdda_7efa_448c_bbf0_81a635e59f84 {
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


view: table2__0b8aa4c5_cdb6_45ed_9fce_35484abb8c68 {
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