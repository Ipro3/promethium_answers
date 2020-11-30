
connection:"pmdevpresto"


explore: table1__6d724eb6_3b4c_4f9e_a82c_5a835b053232 {

join: table2__90c191a6_f1fe_482c_b4be_282a977e4ff9 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__6d724eb6_3b4c_4f9e_a82c_5a835b053232.f1} = ${table2__90c191a6_f1fe_482c_b4be_282a977e4ff9.f2} ;;
}
}


view: table1__6d724eb6_3b4c_4f9e_a82c_5a835b053232 {
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


view: table2__90c191a6_f1fe_482c_b4be_282a977e4ff9 {
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