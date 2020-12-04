
connection:"pmdevpresto"


explore: table1__178d2bca_d892_4c80_93c0_1123572cfb3e {

join: table2__2f1b7932_b3bd_4af3_a82d_0a29cb955b4d {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__178d2bca_d892_4c80_93c0_1123572cfb3e.f1} = ${table2__2f1b7932_b3bd_4af3_a82d_0a29cb955b4d.f2} ;;
}
}


view: table1__178d2bca_d892_4c80_93c0_1123572cfb3e {
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


view: table2__2f1b7932_b3bd_4af3_a82d_0a29cb955b4d {
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