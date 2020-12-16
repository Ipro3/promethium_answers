
connection:"pmdevpresto"


explore: table1__2f13d608_4d5c_4906_9b85_ee0f93d31eac {

join: table2__04b8ef1b_f4ce_4c77_8371_6e38b0115d88 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__2f13d608_4d5c_4906_9b85_ee0f93d31eac.f1} = ${table2__04b8ef1b_f4ce_4c77_8371_6e38b0115d88.f2} ;;
}
}


view: table2__04b8ef1b_f4ce_4c77_8371_6e38b0115d88 {
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


view: table1__2f13d608_4d5c_4906_9b85_ee0f93d31eac {
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