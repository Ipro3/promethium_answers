
connection:"pmdevpresto"


explore: table1__1d5daf72_e467_41b7_b57d_d8107c46d861 {

join: table2__731b8f83_8905_445b_89cf_49eae8ada8b5 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__1d5daf72_e467_41b7_b57d_d8107c46d861.f1} = ${table2__731b8f83_8905_445b_89cf_49eae8ada8b5.f2} ;;
}
}


view: table1__1d5daf72_e467_41b7_b57d_d8107c46d861 {
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


view: table2__731b8f83_8905_445b_89cf_49eae8ada8b5 {
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