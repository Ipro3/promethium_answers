
connection:"pmdevpresto"


explore: table1__bd1c9627_7af2_48bd_bb4a_c3e7d2001bf9 {

join: table2__fde9dc96_2cb4_4fef_8955_a46de72caaf6 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__bd1c9627_7af2_48bd_bb4a_c3e7d2001bf9.f1} = ${table2__fde9dc96_2cb4_4fef_8955_a46de72caaf6.f2} ;;
}
}


view: table2__fde9dc96_2cb4_4fef_8955_a46de72caaf6 {
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


view: table1__bd1c9627_7af2_48bd_bb4a_c3e7d2001bf9 {
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