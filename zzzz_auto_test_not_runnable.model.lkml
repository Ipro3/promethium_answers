
connection:"pmdevpresto"


explore: table1__9761113e_5df9_4412_bc8a_b716dfcc106c {

join: table2__2eac013c_5920_4d21_bf99_66d71cddbb69 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__9761113e_5df9_4412_bc8a_b716dfcc106c.f1} = ${table2__2eac013c_5920_4d21_bf99_66d71cddbb69.f2} ;;
}
}


view: table2__2eac013c_5920_4d21_bf99_66d71cddbb69 {
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


view: table1__9761113e_5df9_4412_bc8a_b716dfcc106c {
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