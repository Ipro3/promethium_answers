
connection:"pmdevpresto"


explore: table1__9f9d92a6_caf8_409c_a906_1aef81048850 {

join: table2__d35ee011_7e85_4fbb_a225_29c1a46f8942 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__9f9d92a6_caf8_409c_a906_1aef81048850.f1} = ${table2__d35ee011_7e85_4fbb_a225_29c1a46f8942.f2} ;;
}
}


view: table2__d35ee011_7e85_4fbb_a225_29c1a46f8942 {
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


view: table1__9f9d92a6_caf8_409c_a906_1aef81048850 {
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