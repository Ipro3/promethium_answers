
connection:"pmdevpresto"


explore: table1__1a9b0706_8d10_4a0d_ba19_a4a1b8126aae {

join: table2__2d3efe68_b948_4ed0_b370_94a58f58a134 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__1a9b0706_8d10_4a0d_ba19_a4a1b8126aae.f1} = ${table2__2d3efe68_b948_4ed0_b370_94a58f58a134.f2} ;;
}
}


view: table2__2d3efe68_b948_4ed0_b370_94a58f58a134 {
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


view: table1__1a9b0706_8d10_4a0d_ba19_a4a1b8126aae {
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