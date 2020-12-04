
connection:"pmdevpresto"


explore: table1__027e3a25_a589_4948_921f_13680cbff882 {

join: table2__25ba6189_e6c4_4c9a_bfd6_d02db279b85a {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__027e3a25_a589_4948_921f_13680cbff882.f1} = ${table2__25ba6189_e6c4_4c9a_bfd6_d02db279b85a.f2} ;;
}
}


view: table1__027e3a25_a589_4948_921f_13680cbff882 {
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


view: table2__25ba6189_e6c4_4c9a_bfd6_d02db279b85a {
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