
connection:"pmdevpresto"


explore: table1__0fb6a102_ce0f_4fec_8499_3219b9e5d649 {

join: table2__5e5de6ec_699a_4294_98f1_a411e3e97534 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__0fb6a102_ce0f_4fec_8499_3219b9e5d649.f1} = ${table2__5e5de6ec_699a_4294_98f1_a411e3e97534.f2} ;;
}
}


view: table1__0fb6a102_ce0f_4fec_8499_3219b9e5d649 {
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


view: table2__5e5de6ec_699a_4294_98f1_a411e3e97534 {
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