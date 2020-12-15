
connection:"pmdevpresto"


explore: table1__e294b963_9c1f_4365_84e6_8ba0d616f962 {

join: table2__5adbda71_06d5_4714_9231_21fbd960eba9 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__e294b963_9c1f_4365_84e6_8ba0d616f962.f1} = ${table2__5adbda71_06d5_4714_9231_21fbd960eba9.f2} ;;
}
}


view: table2__5adbda71_06d5_4714_9231_21fbd960eba9 {
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


view: table1__e294b963_9c1f_4365_84e6_8ba0d616f962 {
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