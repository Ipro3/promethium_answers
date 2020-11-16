
connection:"pmdevpresto"


explore: table1__dfccef37_ab90_4f69_9281_8735c5fdc774 {

join: table2__fb6bb461_9675_4e57_b5b0_1d02a59e230a {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__dfccef37_ab90_4f69_9281_8735c5fdc774.f1} = ${table2__fb6bb461_9675_4e57_b5b0_1d02a59e230a.f2} ;;
}
}


view: table2__fb6bb461_9675_4e57_b5b0_1d02a59e230a {
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


view: table1__dfccef37_ab90_4f69_9281_8735c5fdc774 {
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