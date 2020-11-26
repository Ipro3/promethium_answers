
connection:"pmdevpresto"


explore: table1__1c02e5e5_17a4_4fb4_884d_231278c8b14d {

join: table2__a441c8b7_62ad_4318_8fd9_4f5b3dffbe1a {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__1c02e5e5_17a4_4fb4_884d_231278c8b14d.f1} = ${table2__a441c8b7_62ad_4318_8fd9_4f5b3dffbe1a.f2} ;;
}
}


view: table1__1c02e5e5_17a4_4fb4_884d_231278c8b14d {
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


view: table2__a441c8b7_62ad_4318_8fd9_4f5b3dffbe1a {
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