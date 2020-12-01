
connection:"pmdevpresto"


explore: table1__6a6d5b91_5026_406c_919d_a4979fb22424 {

join: table2__dc545de6_ff17_42fc_90dc_6168a18953da {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__6a6d5b91_5026_406c_919d_a4979fb22424.f1} = ${table2__dc545de6_ff17_42fc_90dc_6168a18953da.f2} ;;
}
}


view: table2__dc545de6_ff17_42fc_90dc_6168a18953da {
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


view: table1__6a6d5b91_5026_406c_919d_a4979fb22424 {
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