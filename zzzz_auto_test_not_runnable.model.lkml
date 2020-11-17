
connection:"pmdevpresto"


explore: table1__696f7208_a0d8_42e2_8dbe_81b2ab3060a9 {

join: table2__9ff23c4f_2eca_4adc_87b9_d5e5b2128fb1 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__696f7208_a0d8_42e2_8dbe_81b2ab3060a9.f1} = ${table2__9ff23c4f_2eca_4adc_87b9_d5e5b2128fb1.f2} ;;
}
}


view: table2__9ff23c4f_2eca_4adc_87b9_d5e5b2128fb1 {
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


view: table1__696f7208_a0d8_42e2_8dbe_81b2ab3060a9 {
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