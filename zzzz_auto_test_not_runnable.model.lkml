
connection:"pmdevpresto"


explore: table1__d7e0c66d_42ae_4b0e_8454_71385c343599 {

join: table2__02a010ab_29e4_4fc4_838c_8c7757bc8ff0 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__d7e0c66d_42ae_4b0e_8454_71385c343599.f1} = ${table2__02a010ab_29e4_4fc4_838c_8c7757bc8ff0.f2} ;;
}
}


view: table2__02a010ab_29e4_4fc4_838c_8c7757bc8ff0 {
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


view: table1__d7e0c66d_42ae_4b0e_8454_71385c343599 {
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