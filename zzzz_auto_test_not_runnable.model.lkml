
connection:"pmdevpresto"


explore: table1__e0cff7ff_d194_49c0_89b9_0beb302e2912 {

join: table2__6fa35c69_865b_4b09_ab77_a8192fb06f1d {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__e0cff7ff_d194_49c0_89b9_0beb302e2912.f1} = ${table2__6fa35c69_865b_4b09_ab77_a8192fb06f1d.f2} ;;
}
}


view: table1__e0cff7ff_d194_49c0_89b9_0beb302e2912 {
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


view: table2__6fa35c69_865b_4b09_ab77_a8192fb06f1d {
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