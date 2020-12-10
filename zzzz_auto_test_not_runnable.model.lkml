
connection:"pmdevpresto"


explore: table1__2a8b86bb_9ed9_4411_82e6_62c733615dcf {

join: table2__dc0f81a9_736e_4480_976c_52f972e3435e {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__2a8b86bb_9ed9_4411_82e6_62c733615dcf.f1} = ${table2__dc0f81a9_736e_4480_976c_52f972e3435e.f2} ;;
}
}


view: table1__2a8b86bb_9ed9_4411_82e6_62c733615dcf {
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


view: table2__dc0f81a9_736e_4480_976c_52f972e3435e {
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