
connection:"pmdevpresto"


explore: table1__18b24bc6_1b95_4c20_8213_fa3229ef0b8d {

join: table2__7b56c726_55e7_49bd_8797_972ed2a012fe {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__18b24bc6_1b95_4c20_8213_fa3229ef0b8d.f1} = ${table2__7b56c726_55e7_49bd_8797_972ed2a012fe.f2} ;;
}
}


view: table1__18b24bc6_1b95_4c20_8213_fa3229ef0b8d {
sql_table_name:catalog1.db1.table1 ;;
  dimension: primary_key {
  primary_key: yes
  sql: CONCAT(${TABLE}.f1, ${TABLE}.f2, ${TABLE}.f3) ;;
}
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


view: table2__7b56c726_55e7_49bd_8797_972ed2a012fe {
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