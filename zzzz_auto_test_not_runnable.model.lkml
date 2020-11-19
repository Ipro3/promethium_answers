
connection:"pmdevpresto"


explore: table1__1b955055_e76f_4186_bf55_d2a812c74b04 {

join: table2__ffe92a5f_5d8f_4843_bb7a_f825be96e38a {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__1b955055_e76f_4186_bf55_d2a812c74b04.f1} = ${table2__ffe92a5f_5d8f_4843_bb7a_f825be96e38a.f2} ;;
}
}


view: table2__ffe92a5f_5d8f_4843_bb7a_f825be96e38a {
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


view: table1__1b955055_e76f_4186_bf55_d2a812c74b04 {
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