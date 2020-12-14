
connection:"pmdevpresto"


explore: table1__0f169590_8b61_4ad7_837b_eb04507c42fa {

join: table2__79bd53f8_cd88_49cb_b26e_50b98788b5e3 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__0f169590_8b61_4ad7_837b_eb04507c42fa.f1} = ${table2__79bd53f8_cd88_49cb_b26e_50b98788b5e3.f2} ;;
}
}


view: table2__79bd53f8_cd88_49cb_b26e_50b98788b5e3 {
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


view: table1__0f169590_8b61_4ad7_837b_eb04507c42fa {
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