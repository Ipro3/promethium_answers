
connection:"pmdevpresto"


explore: table1__28da10cb_b5c4_44ed_9b54_55497da812ea {

join: table2__f3a43a47_7fbb_480f_a8b3_46887bb5e87e {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__28da10cb_b5c4_44ed_9b54_55497da812ea.f1} = ${table2__f3a43a47_7fbb_480f_a8b3_46887bb5e87e.f2} ;;
}
}


view: table2__f3a43a47_7fbb_480f_a8b3_46887bb5e87e {
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


view: table1__28da10cb_b5c4_44ed_9b54_55497da812ea {
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