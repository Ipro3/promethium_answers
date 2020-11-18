
connection:"pmdevpresto"


explore: table1__89dd8107_68c8_4e94_a59b_054b860cc3ba {

join: table2__1d5b0cc6_b662_4437_83d5_a46f25ac61d9 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__89dd8107_68c8_4e94_a59b_054b860cc3ba.f1} = ${table2__1d5b0cc6_b662_4437_83d5_a46f25ac61d9.f2} ;;
}
}


view: table2__1d5b0cc6_b662_4437_83d5_a46f25ac61d9 {
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


view: table1__89dd8107_68c8_4e94_a59b_054b860cc3ba {
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