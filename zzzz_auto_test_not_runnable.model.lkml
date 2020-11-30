
connection:"pmdevpresto"


explore: table1__6039a360_7421_4d98_bf79_d2f4ed96401d {

join: table2__ab544388_903d_400a_92a3_9f92a3a206d1 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__6039a360_7421_4d98_bf79_d2f4ed96401d.f1} = ${table2__ab544388_903d_400a_92a3_9f92a3a206d1.f2} ;;
}
}


view: table2__ab544388_903d_400a_92a3_9f92a3a206d1 {
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


view: table1__6039a360_7421_4d98_bf79_d2f4ed96401d {
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