
connection:"pmdevpresto"


explore: table1__6e946a7c_f099_484e_acf6_8f73e53cfb6e {

join: table2__e7424aae_5512_41d8_8bc7_837039b35692 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__6e946a7c_f099_484e_acf6_8f73e53cfb6e.f1} = ${table2__e7424aae_5512_41d8_8bc7_837039b35692.f2} ;;
}
}


view: table2__e7424aae_5512_41d8_8bc7_837039b35692 {
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


view: table1__6e946a7c_f099_484e_acf6_8f73e53cfb6e {
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