
connection:"pmdevpresto"


explore: table1__182b7542_b30b_4c8a_9e87_1efffae4bd62 {

join: table2__1963c0b7_c5be_43fc_af8b_1041de252bb8 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__182b7542_b30b_4c8a_9e87_1efffae4bd62.f1} = ${table2__1963c0b7_c5be_43fc_af8b_1041de252bb8.f2} ;;
}
}


view: table2__1963c0b7_c5be_43fc_af8b_1041de252bb8 {
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


view: table1__182b7542_b30b_4c8a_9e87_1efffae4bd62 {
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