
connection:"pmdevpresto"


explore: table1__e30b953e_1883_4b60_b82c_9d7309bbe084 {

join: table2__3fde8eb3_e15a_4673_9570_37fb8a3a98bd {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__e30b953e_1883_4b60_b82c_9d7309bbe084.f1} = ${table2__3fde8eb3_e15a_4673_9570_37fb8a3a98bd.f2} ;;
}
}


view: table2__3fde8eb3_e15a_4673_9570_37fb8a3a98bd {
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


view: table1__e30b953e_1883_4b60_b82c_9d7309bbe084 {
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