
connection:"pmdevpresto"


explore: table1__957d2baa_00d9_4f35_9b29_08c1cc1c219a {

join: table2__e839b584_ad8a_495d_a9ce_c393d9197f51 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__957d2baa_00d9_4f35_9b29_08c1cc1c219a.f1} = ${table2__e839b584_ad8a_495d_a9ce_c393d9197f51.f2} ;;
}
}


view: table1__957d2baa_00d9_4f35_9b29_08c1cc1c219a {
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


view: table2__e839b584_ad8a_495d_a9ce_c393d9197f51 {
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