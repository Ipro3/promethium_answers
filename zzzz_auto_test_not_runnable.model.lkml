
connection:"pmdevpresto"


explore: table1__fb270c22_a63d_4321_9b6b_8c91045b623e {

join: table2__eba73743_5e76_4897_9779_632e47f004a8 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__fb270c22_a63d_4321_9b6b_8c91045b623e.f1} = ${table2__eba73743_5e76_4897_9779_632e47f004a8.f2} ;;
}
}


view: table1__fb270c22_a63d_4321_9b6b_8c91045b623e {
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


view: table2__eba73743_5e76_4897_9779_632e47f004a8 {
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