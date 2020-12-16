
connection:"pmdevpresto"


explore: table1__8a02cf8e_1632_402e_82e4_8b729df87d3d {

join: table2__1bd703da_0a4f_4267_87cf_06473d98c2d2 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__8a02cf8e_1632_402e_82e4_8b729df87d3d.f1} = ${table2__1bd703da_0a4f_4267_87cf_06473d98c2d2.f2} ;;
}
}


view: table2__1bd703da_0a4f_4267_87cf_06473d98c2d2 {
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


view: table1__8a02cf8e_1632_402e_82e4_8b729df87d3d {
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