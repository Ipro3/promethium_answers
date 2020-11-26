
connection:"pmdevpresto"


explore: table1__409f37ad_231b_4f99_ad1a_09de30f81d00 {

join: table2__70e55c76_eabb_4029_a4cf_2c90cd3b6540 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__409f37ad_231b_4f99_ad1a_09de30f81d00.f1} = ${table2__70e55c76_eabb_4029_a4cf_2c90cd3b6540.f2} ;;
}
}


view: table2__70e55c76_eabb_4029_a4cf_2c90cd3b6540 {
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


view: table1__409f37ad_231b_4f99_ad1a_09de30f81d00 {
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