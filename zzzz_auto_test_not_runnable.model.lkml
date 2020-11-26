
connection:"pmdevpresto"


explore: table1__5efccd44_e66a_49be_94a7_09ef33c4c2ae {

join: table2__133f1603_55e1_4faa_8a87_36b1a5bf012a {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__5efccd44_e66a_49be_94a7_09ef33c4c2ae.f1} = ${table2__133f1603_55e1_4faa_8a87_36b1a5bf012a.f2} ;;
}
}


view: table2__133f1603_55e1_4faa_8a87_36b1a5bf012a {
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


view: table1__5efccd44_e66a_49be_94a7_09ef33c4c2ae {
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