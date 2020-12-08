
connection:"pmdevpresto"


explore: table1__9a3ae27c_8720_4abd_b084_4597db36e19d {

join: table2__428ce970_4320_4e95_b977_ba1d5209a631 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__9a3ae27c_8720_4abd_b084_4597db36e19d.f1} = ${table2__428ce970_4320_4e95_b977_ba1d5209a631.f2} ;;
}
}


view: table1__9a3ae27c_8720_4abd_b084_4597db36e19d {
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


view: table2__428ce970_4320_4e95_b977_ba1d5209a631 {
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