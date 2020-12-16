
connection:"pmdevpresto"


explore: table1__4de24760_aea3_4e4e_b2a5_d5ea747d6f05 {

join: table2__cf242cdd_9018_4198_9f59_bf3537435ec3 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__4de24760_aea3_4e4e_b2a5_d5ea747d6f05.f1} = ${table2__cf242cdd_9018_4198_9f59_bf3537435ec3.f2} ;;
}
}


view: table1__4de24760_aea3_4e4e_b2a5_d5ea747d6f05 {
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


view: table2__cf242cdd_9018_4198_9f59_bf3537435ec3 {
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