
connection:"pmdevpresto"


explore: table1__660adbba_08f1_4f34_bb53_f988fb068ce1 {

join: table2__031c0489_9004_4ead_b3c7_c030b471fb26 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__660adbba_08f1_4f34_bb53_f988fb068ce1.f1} = ${table2__031c0489_9004_4ead_b3c7_c030b471fb26.f2} ;;
}
}


view: table2__031c0489_9004_4ead_b3c7_c030b471fb26 {
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


view: table1__660adbba_08f1_4f34_bb53_f988fb068ce1 {
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