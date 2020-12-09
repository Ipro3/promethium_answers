
connection:"pmdevpresto"


explore: table1__f35c3a26_515c_4029_aaa5_f4055fc47cae {

join: table2__4602ff9a_ae3b_462e_904b_be9bd6cbddae {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__f35c3a26_515c_4029_aaa5_f4055fc47cae.f1} = ${table2__4602ff9a_ae3b_462e_904b_be9bd6cbddae.f2} ;;
}
}


view: table2__4602ff9a_ae3b_462e_904b_be9bd6cbddae {
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


view: table1__f35c3a26_515c_4029_aaa5_f4055fc47cae {
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