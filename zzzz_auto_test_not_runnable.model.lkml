
connection:"pmdevpresto"


explore: table1__2b49649c_4469_4a2e_b230_a3cc167f8165 {

join: table2__ab0e403d_d07c_4333_b222_8adc7e6fe665 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__2b49649c_4469_4a2e_b230_a3cc167f8165.f1} = ${table2__ab0e403d_d07c_4333_b222_8adc7e6fe665.f2} ;;
}
}


view: table2__ab0e403d_d07c_4333_b222_8adc7e6fe665 {
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


view: table1__2b49649c_4469_4a2e_b230_a3cc167f8165 {
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