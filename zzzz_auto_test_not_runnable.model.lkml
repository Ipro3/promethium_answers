
connection:"pmdevpresto"


explore: table1__4e569b42_11ff_4ddd_830d_548f645961bb {

join: table2__0f940780_9caf_4102_ba5e_500ed377c30c {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__4e569b42_11ff_4ddd_830d_548f645961bb.f1} = ${table2__0f940780_9caf_4102_ba5e_500ed377c30c.f2} ;;
}
}


view: table2__0f940780_9caf_4102_ba5e_500ed377c30c {
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


view: table1__4e569b42_11ff_4ddd_830d_548f645961bb {
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