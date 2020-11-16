
connection:"pmdevpresto"


explore: table1__0c667c56_2a41_4330_af04_f49687e8bc8e {

join: table2__fd5cc3c3_01a8_4700_a294_cab200a3e968 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__0c667c56_2a41_4330_af04_f49687e8bc8e.f1} = ${table2__fd5cc3c3_01a8_4700_a294_cab200a3e968.f2} ;;
}
}


view: table2__fd5cc3c3_01a8_4700_a294_cab200a3e968 {
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


view: table1__0c667c56_2a41_4330_af04_f49687e8bc8e {
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