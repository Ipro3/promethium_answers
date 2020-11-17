
connection:"pmdevpresto"


explore: table1__bf5144ec_bd2c_4258_9a4d_9258d0663b25 {

join: table2__4198104e_e66c_4a49_a948_ba23337f5b84 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__bf5144ec_bd2c_4258_9a4d_9258d0663b25.f1} = ${table2__4198104e_e66c_4a49_a948_ba23337f5b84.f2} ;;
}
}


view: table2__4198104e_e66c_4a49_a948_ba23337f5b84 {
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


view: table1__bf5144ec_bd2c_4258_9a4d_9258d0663b25 {
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