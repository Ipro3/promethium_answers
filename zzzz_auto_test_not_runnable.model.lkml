
connection:"pmdevpresto"


explore: table1__89ac4b79_d33a_4e42_b574_1f38288da133 {

join: table2__2a98a472_ab7e_494f_b3bb_9d7c7351d912 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__89ac4b79_d33a_4e42_b574_1f38288da133.f1} = ${table2__2a98a472_ab7e_494f_b3bb_9d7c7351d912.f2} ;;
}
}


view: table1__89ac4b79_d33a_4e42_b574_1f38288da133 {
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


view: table2__2a98a472_ab7e_494f_b3bb_9d7c7351d912 {
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