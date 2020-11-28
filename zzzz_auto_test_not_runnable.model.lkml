
connection:"pmdevpresto"


explore: table1__0790b54b_57ed_4231_aaca_4ee55d20fa3d {

join: table2__971e97cf_cbaa_4317_a524_4fba02a185bf {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__0790b54b_57ed_4231_aaca_4ee55d20fa3d.f1} = ${table2__971e97cf_cbaa_4317_a524_4fba02a185bf.f2} ;;
}
}


view: table2__971e97cf_cbaa_4317_a524_4fba02a185bf {
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


view: table1__0790b54b_57ed_4231_aaca_4ee55d20fa3d {
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