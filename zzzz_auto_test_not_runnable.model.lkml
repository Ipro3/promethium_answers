
connection:"pmdevpresto"


explore: table1__bb61d0c3_2af9_4942_81bb_db7154b77729 {

join: table2__7722a3a6_3cae_4ea1_ab57_15051adb2179 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__bb61d0c3_2af9_4942_81bb_db7154b77729.f1} = ${table2__7722a3a6_3cae_4ea1_ab57_15051adb2179.f2} ;;
}
}


view: table2__7722a3a6_3cae_4ea1_ab57_15051adb2179 {
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


view: table1__bb61d0c3_2af9_4942_81bb_db7154b77729 {
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