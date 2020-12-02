
connection:"pmdevpresto"


explore: table1__2486b7ad_ac39_4bc1_a195_ba580c886572 {

join: table2__aa959be8_2bc6_47af_ad74_34079055ac4a {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__2486b7ad_ac39_4bc1_a195_ba580c886572.f1} = ${table2__aa959be8_2bc6_47af_ad74_34079055ac4a.f2} ;;
}
}


view: table1__2486b7ad_ac39_4bc1_a195_ba580c886572 {
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


view: table2__aa959be8_2bc6_47af_ad74_34079055ac4a {
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