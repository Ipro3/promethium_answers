
connection:"pmdevpresto"


explore: table1__91a248ee_8f04_4198_8da5_0b5665d177dc {

join: table2__195f48f3_2330_4016_b97a_0d8a27c2a142 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__91a248ee_8f04_4198_8da5_0b5665d177dc.f1} = ${table2__195f48f3_2330_4016_b97a_0d8a27c2a142.f2} ;;
}
}


view: table1__91a248ee_8f04_4198_8da5_0b5665d177dc {
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


view: table2__195f48f3_2330_4016_b97a_0d8a27c2a142 {
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