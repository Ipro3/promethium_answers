
connection:"pmdevpresto"


explore: table1__1bef5e88_5a6a_4067_8f9a_9a525e4f70fe {

join: table2__cf53bac8_9bc5_428f_ac61_6407cdc5c9d8 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__1bef5e88_5a6a_4067_8f9a_9a525e4f70fe.f1} = ${table2__cf53bac8_9bc5_428f_ac61_6407cdc5c9d8.f2} ;;
}
}


view: table1__1bef5e88_5a6a_4067_8f9a_9a525e4f70fe {
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


view: table2__cf53bac8_9bc5_428f_ac61_6407cdc5c9d8 {
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