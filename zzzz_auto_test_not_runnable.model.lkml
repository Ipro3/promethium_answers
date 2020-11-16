
connection:"pmdevpresto"


explore: table1__30973f13_0e0d_45e8_86fd_c45dd1f47f0a {

join: table2__666c774d_fa4d_4b08_97fe_9c06e1378756 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__30973f13_0e0d_45e8_86fd_c45dd1f47f0a.f1} = ${table2__666c774d_fa4d_4b08_97fe_9c06e1378756.f2} ;;
}
}


view: table2__666c774d_fa4d_4b08_97fe_9c06e1378756 {
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


view: table1__30973f13_0e0d_45e8_86fd_c45dd1f47f0a {
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