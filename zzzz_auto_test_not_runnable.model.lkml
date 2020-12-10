
connection:"pmdevpresto"


explore: table1__f5aa9419_2756_486b_98ae_e814c8c92073 {

join: table2__3c448180_3fc0_41ad_a614_e5ef337736ca {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__f5aa9419_2756_486b_98ae_e814c8c92073.f1} = ${table2__3c448180_3fc0_41ad_a614_e5ef337736ca.f2} ;;
}
}


view: table2__3c448180_3fc0_41ad_a614_e5ef337736ca {
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


view: table1__f5aa9419_2756_486b_98ae_e814c8c92073 {
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