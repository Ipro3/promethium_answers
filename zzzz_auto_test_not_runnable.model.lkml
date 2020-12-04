
connection:"pmdevpresto"


explore: table1__ac67b865_4a14_4b06_a70d_4bb6024b642c {

join: table2__16027260_0e21_40bb_8299_f01df52b30eb {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__ac67b865_4a14_4b06_a70d_4bb6024b642c.f1} = ${table2__16027260_0e21_40bb_8299_f01df52b30eb.f2} ;;
}
}


view: table2__16027260_0e21_40bb_8299_f01df52b30eb {
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


view: table1__ac67b865_4a14_4b06_a70d_4bb6024b642c {
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