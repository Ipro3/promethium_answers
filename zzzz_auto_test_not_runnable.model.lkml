
connection:"pmdevpresto"


explore: table1__9b85eacc_081f_4380_b729_ca8f597e0c68 {

join: table2__787c19f9_ea91_483e_adde_738ca9d9018c {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__9b85eacc_081f_4380_b729_ca8f597e0c68.f1} = ${table2__787c19f9_ea91_483e_adde_738ca9d9018c.f2} ;;
}
}


view: table2__787c19f9_ea91_483e_adde_738ca9d9018c {
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


view: table1__9b85eacc_081f_4380_b729_ca8f597e0c68 {
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