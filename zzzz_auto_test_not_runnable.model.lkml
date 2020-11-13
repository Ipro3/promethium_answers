
connection:"pmdevpresto"


explore: table1__e8a5a659_e061_454c_ab94_0ff0a2d7f093 {

join: table2__90afad7e_67e8_4fd3_bc85_c2255c235858 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__e8a5a659_e061_454c_ab94_0ff0a2d7f093.f1} = ${table2__90afad7e_67e8_4fd3_bc85_c2255c235858.f2} ;;
}
}


view: table2__90afad7e_67e8_4fd3_bc85_c2255c235858 {
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


view: table1__e8a5a659_e061_454c_ab94_0ff0a2d7f093 {
sql_table_name:catalog1.db1.table1 ;;dimension: primary_key {
  primary_key: yessql: CONCAT(${TABLE}.f1, ${TABLE}.f2, ${TABLE}.f3) ;;
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