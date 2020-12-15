
connection:"pmdevpresto"


explore: table1__049a8cfd_3870_4796_a063_cfb0289394fa {

join: table2__5bf43bda_b653_4eae_9644_4e56d2651d41 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__049a8cfd_3870_4796_a063_cfb0289394fa.f1} = ${table2__5bf43bda_b653_4eae_9644_4e56d2651d41.f2} ;;
}
}


view: table1__049a8cfd_3870_4796_a063_cfb0289394fa {
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


view: table2__5bf43bda_b653_4eae_9644_4e56d2651d41 {
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