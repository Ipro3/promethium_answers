
connection:"pmdevpresto"


explore: table1__ac905522_3643_44a8_8b43_a7517c007dff {

join: table2__3d252bbd_1fcc_4608_ae3a_7a3ee32e4eb4 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__ac905522_3643_44a8_8b43_a7517c007dff.f1} = ${table2__3d252bbd_1fcc_4608_ae3a_7a3ee32e4eb4.f2} ;;
}
}


view: table1__ac905522_3643_44a8_8b43_a7517c007dff {
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


view: table2__3d252bbd_1fcc_4608_ae3a_7a3ee32e4eb4 {
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