
connection:"pmdevpresto"


explore: table1__972e128c_b347_44e7_8aaf_67bd8486a152 {

join: table2__77036658_38a1_4969_b323_7d15372a5e01 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__972e128c_b347_44e7_8aaf_67bd8486a152.f1} = ${table2__77036658_38a1_4969_b323_7d15372a5e01.f2} ;;
}
}


view: table2__77036658_38a1_4969_b323_7d15372a5e01 {
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


view: table1__972e128c_b347_44e7_8aaf_67bd8486a152 {
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