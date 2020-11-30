
connection:"pmdevpresto"


explore: table1__4ce68f3a_e47a_46de_a0ba_9280cfc44b69 {

join: table2__303fa392_4f64_446e_ac43_c786fea16a89 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__4ce68f3a_e47a_46de_a0ba_9280cfc44b69.f1} = ${table2__303fa392_4f64_446e_ac43_c786fea16a89.f2} ;;
}
}


view: table1__4ce68f3a_e47a_46de_a0ba_9280cfc44b69 {
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


view: table2__303fa392_4f64_446e_ac43_c786fea16a89 {
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