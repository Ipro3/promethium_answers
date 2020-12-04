
connection:"pmdevpresto"


explore: table1__1b8a4651_2b82_4a03_b89b_010d65557c30 {

join: table2__e35eb673_0811_4af1_a453_8b12510caa15 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__1b8a4651_2b82_4a03_b89b_010d65557c30.f1} = ${table2__e35eb673_0811_4af1_a453_8b12510caa15.f2} ;;
}
}


view: table2__e35eb673_0811_4af1_a453_8b12510caa15 {
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


view: table1__1b8a4651_2b82_4a03_b89b_010d65557c30 {
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