
connection:"pmdevpresto"


explore: table1__e30de77b_014a_431e_96a5_99d44d6e2077 {

join: table2__dd9daeb2_189e_47f3_b306_5bf2b2015da2 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__e30de77b_014a_431e_96a5_99d44d6e2077.f1} = ${table2__dd9daeb2_189e_47f3_b306_5bf2b2015da2.f2} ;;
}
}


view: table1__e30de77b_014a_431e_96a5_99d44d6e2077 {
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


view: table2__dd9daeb2_189e_47f3_b306_5bf2b2015da2 {
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