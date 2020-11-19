
connection:"pmdevpresto"


explore: table1__2840661d_b70a_4d38_8321_4bbb36776ef2 {

join: table2__b2c301cb_672e_4e5d_8a49_e839e3ea48e9 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__2840661d_b70a_4d38_8321_4bbb36776ef2.f1} = ${table2__b2c301cb_672e_4e5d_8a49_e839e3ea48e9.f2} ;;
}
}


view: table2__b2c301cb_672e_4e5d_8a49_e839e3ea48e9 {
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


view: table1__2840661d_b70a_4d38_8321_4bbb36776ef2 {
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