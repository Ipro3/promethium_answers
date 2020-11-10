
connection:"pmdevpresto"


explore: table1__0cc79232_126c_42fe_899b_65f48a529516 {

join: table2__7647687f_f424_4533_a5fc_03f6b03e8292 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__0cc79232_126c_42fe_899b_65f48a529516.f1} = ${table2__7647687f_f424_4533_a5fc_03f6b03e8292.f2} ;;
}
}


view: table2__7647687f_f424_4533_a5fc_03f6b03e8292 {
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


view: table1__0cc79232_126c_42fe_899b_65f48a529516 {
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