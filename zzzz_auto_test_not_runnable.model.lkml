
connection:"pmdevpresto"


explore: table1__8236a79d_364e_49ef_bbb1_0ed304bed8dc {

join: table2__68bf9630_cb24_46bc_95dd_c0157f17f600 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__8236a79d_364e_49ef_bbb1_0ed304bed8dc.f1} = ${table2__68bf9630_cb24_46bc_95dd_c0157f17f600.f2} ;;
}
}


view: table2__68bf9630_cb24_46bc_95dd_c0157f17f600 {
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


view: table1__8236a79d_364e_49ef_bbb1_0ed304bed8dc {
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