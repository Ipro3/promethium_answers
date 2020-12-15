
connection:"pmdevpresto"


explore: table1__b569b196_1a62_4f27_8521_8afee471fe8d {

join: table2__17a38013_6445_4fac_91d1_05ce376dcfd7 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__b569b196_1a62_4f27_8521_8afee471fe8d.f1} = ${table2__17a38013_6445_4fac_91d1_05ce376dcfd7.f2} ;;
}
}


view: table2__17a38013_6445_4fac_91d1_05ce376dcfd7 {
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


view: table1__b569b196_1a62_4f27_8521_8afee471fe8d {
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