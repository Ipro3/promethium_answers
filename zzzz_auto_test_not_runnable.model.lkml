
connection:"pmdevpresto"


explore: table1__f5295f1d_4c87_493a_9291_142a6de8c1be {

join: table2__8b079534_a226_4f08_b073_85bb3ca572a5 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__f5295f1d_4c87_493a_9291_142a6de8c1be.f1} = ${table2__8b079534_a226_4f08_b073_85bb3ca572a5.f2} ;;
}
}


view: table1__f5295f1d_4c87_493a_9291_142a6de8c1be {
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


view: table2__8b079534_a226_4f08_b073_85bb3ca572a5 {
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