
connection:"pmdevpresto"


explore: table1__3f11156b_1891_44b6_a5f6_b957f0b4bf3a {

join: table2__906a982e_1d44_49b7_b661_8388eb72eda2 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__3f11156b_1891_44b6_a5f6_b957f0b4bf3a.f1} = ${table2__906a982e_1d44_49b7_b661_8388eb72eda2.f2} ;;
}
}


view: table1__3f11156b_1891_44b6_a5f6_b957f0b4bf3a {
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


view: table2__906a982e_1d44_49b7_b661_8388eb72eda2 {
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