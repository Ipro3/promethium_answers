
connection:"pmdevpresto"


explore: table1__1c379355_00ba_449a_b863_25e949dcd308 {

join: table2__dd0cfc3f_b4ff_4256_a891_e7c415f9dab4 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__1c379355_00ba_449a_b863_25e949dcd308.f1} = ${table2__dd0cfc3f_b4ff_4256_a891_e7c415f9dab4.f2} ;;
}
}


view: table1__1c379355_00ba_449a_b863_25e949dcd308 {
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


view: table2__dd0cfc3f_b4ff_4256_a891_e7c415f9dab4 {
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