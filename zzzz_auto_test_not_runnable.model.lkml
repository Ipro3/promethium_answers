
connection:"pmdevpresto"


explore: table1__a21e147c_1253_4843_8b8e_b7571d22ce04 {

join: table2__b2cf32e9_e6ff_468b_8ac1_b4c3ad6005fa {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__a21e147c_1253_4843_8b8e_b7571d22ce04.f1} = ${table2__b2cf32e9_e6ff_468b_8ac1_b4c3ad6005fa.f2} ;;
}
}


view: table1__a21e147c_1253_4843_8b8e_b7571d22ce04 {
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


view: table2__b2cf32e9_e6ff_468b_8ac1_b4c3ad6005fa {
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