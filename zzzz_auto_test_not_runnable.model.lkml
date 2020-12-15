
connection:"pmdevpresto"


explore: table1__4bdb0c3e_984c_4566_baf7_06f2717f4055 {

join: table2__eed5b855_41d4_4294_bb93_a78e277a08b7 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__4bdb0c3e_984c_4566_baf7_06f2717f4055.f1} = ${table2__eed5b855_41d4_4294_bb93_a78e277a08b7.f2} ;;
}
}


view: table2__eed5b855_41d4_4294_bb93_a78e277a08b7 {
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


view: table1__4bdb0c3e_984c_4566_baf7_06f2717f4055 {
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