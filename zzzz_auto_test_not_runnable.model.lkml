
connection:"pmdevpresto"


explore: table1__672a4a73_d7e6_4a05_83f6_faf8f7d06aff {

join: table2__2a3c0527_f195_46ed_9095_2477b32f2c5f {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__672a4a73_d7e6_4a05_83f6_faf8f7d06aff.f1} = ${table2__2a3c0527_f195_46ed_9095_2477b32f2c5f.f2} ;;
}
}


view: table2__2a3c0527_f195_46ed_9095_2477b32f2c5f {
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


view: table1__672a4a73_d7e6_4a05_83f6_faf8f7d06aff {
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