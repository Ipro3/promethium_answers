
connection:"pmdevpresto"


explore: table1__8f2bedd1_d42f_445f_ae50_88ddda00b78f {

join: table2__2a8cd631_4696_48a2_85b5_c1b5d21b6bea {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__8f2bedd1_d42f_445f_ae50_88ddda00b78f.f1} = ${table2__2a8cd631_4696_48a2_85b5_c1b5d21b6bea.f2} ;;
}
}


view: table1__8f2bedd1_d42f_445f_ae50_88ddda00b78f {
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


view: table2__2a8cd631_4696_48a2_85b5_c1b5d21b6bea {
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