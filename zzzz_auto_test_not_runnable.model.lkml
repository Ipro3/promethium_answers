
connection:"pmdevpresto"


explore: table1__291097ba_3286_4f40_a56c_229585ab4ce8 {

join: table2__e9d7157c_1804_4e56_9a92_7087351cabe0 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__291097ba_3286_4f40_a56c_229585ab4ce8.f1} = ${table2__e9d7157c_1804_4e56_9a92_7087351cabe0.f2} ;;
}
}


view: table1__291097ba_3286_4f40_a56c_229585ab4ce8 {
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


view: table2__e9d7157c_1804_4e56_9a92_7087351cabe0 {
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