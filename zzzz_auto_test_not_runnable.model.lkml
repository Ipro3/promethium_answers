
connection:"pmdevpresto"


explore: table1__24119aeb_73fc_4ae5_ae5e_9c2e8360c29e {

join: table2__0b4b110e_de47_42d5_96fd_b6617a7bbbb1 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__24119aeb_73fc_4ae5_ae5e_9c2e8360c29e.f1} = ${table2__0b4b110e_de47_42d5_96fd_b6617a7bbbb1.f2} ;;
}
}


view: table1__24119aeb_73fc_4ae5_ae5e_9c2e8360c29e {
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


view: table2__0b4b110e_de47_42d5_96fd_b6617a7bbbb1 {
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