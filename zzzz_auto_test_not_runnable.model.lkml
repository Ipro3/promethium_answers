
connection:"pmdevpresto"


explore: table1__345c1132_1399_42fa_aa47_dd96066f6171 {

join: table2__73f5e6ee_955c_4459_8469_8c881a68143c {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__345c1132_1399_42fa_aa47_dd96066f6171.f1} = ${table2__73f5e6ee_955c_4459_8469_8c881a68143c.f2} ;;
}
}


view: table2__73f5e6ee_955c_4459_8469_8c881a68143c {
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


view: table1__345c1132_1399_42fa_aa47_dd96066f6171 {
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