
connection:"pmdevpresto"


explore: table1__69d7729a_2787_4f12_8fb7_4e756ef4b623 {

join: table2__031425c1_20a7_4c43_8240_54633cbc6d25 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__69d7729a_2787_4f12_8fb7_4e756ef4b623.f1} = ${table2__031425c1_20a7_4c43_8240_54633cbc6d25.f2} ;;
}
}


view: table2__031425c1_20a7_4c43_8240_54633cbc6d25 {
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


view: table1__69d7729a_2787_4f12_8fb7_4e756ef4b623 {
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