
connection:"pmdevpresto"


explore: table1__4bc1346d_3e93_4d57_a415_6d175c213a21 {

join: table2__d273cd70_2ecf_4237_8272_02da09f5470c {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__4bc1346d_3e93_4d57_a415_6d175c213a21.f1} = ${table2__d273cd70_2ecf_4237_8272_02da09f5470c.f2} ;;
}
}


view: table1__4bc1346d_3e93_4d57_a415_6d175c213a21 {
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


view: table2__d273cd70_2ecf_4237_8272_02da09f5470c {
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