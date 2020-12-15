
connection:"pmdevpresto"


explore: table1__f16a25e9_cb29_45d6_975f_f6b54891d207 {

join: table2__dc299c2a_a912_4575_aa8b_07ee6e144239 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__f16a25e9_cb29_45d6_975f_f6b54891d207.f1} = ${table2__dc299c2a_a912_4575_aa8b_07ee6e144239.f2} ;;
}
}


view: table2__dc299c2a_a912_4575_aa8b_07ee6e144239 {
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


view: table1__f16a25e9_cb29_45d6_975f_f6b54891d207 {
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