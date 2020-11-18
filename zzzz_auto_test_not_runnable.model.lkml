
connection:"pmdevpresto"


explore: table1__eb352e92_ca4b_407f_afed_9ab907178918 {

join: table2__db4592ec_ceb8_4962_8b50_9abd09314ce8 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__eb352e92_ca4b_407f_afed_9ab907178918.f1} = ${table2__db4592ec_ceb8_4962_8b50_9abd09314ce8.f2} ;;
}
}


view: table2__db4592ec_ceb8_4962_8b50_9abd09314ce8 {
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


view: table1__eb352e92_ca4b_407f_afed_9ab907178918 {
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