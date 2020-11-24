
connection:"pmdevpresto"


explore: table1__92c6ec80_e009_42c6_8c54_b2520dfb20a3 {

join: table2__48124419_ce6a_4d96_ba54_8e3f29390bd8 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__92c6ec80_e009_42c6_8c54_b2520dfb20a3.f1} = ${table2__48124419_ce6a_4d96_ba54_8e3f29390bd8.f2} ;;
}
}


view: table1__92c6ec80_e009_42c6_8c54_b2520dfb20a3 {
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


view: table2__48124419_ce6a_4d96_ba54_8e3f29390bd8 {
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