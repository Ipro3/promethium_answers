
connection:"pmdevpresto"


explore: table1__13ba9558_aef0_4891_872b_37c3bb619a9d {

join: table2__cdb2c0df_f0ce_4ea5_9bda_ed0443a2b037 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__13ba9558_aef0_4891_872b_37c3bb619a9d.f1} = ${table2__cdb2c0df_f0ce_4ea5_9bda_ed0443a2b037.f2} ;;
}
}


view: table2__cdb2c0df_f0ce_4ea5_9bda_ed0443a2b037 {
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


view: table1__13ba9558_aef0_4891_872b_37c3bb619a9d {
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