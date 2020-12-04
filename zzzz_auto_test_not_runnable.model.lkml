
connection:"pmdevpresto"


explore: table1__8b2d1522_fac6_4b42_80ab_6d8eb32b370b {

join: table2__5e8d0344_4551_45ff_b532_cad26ab76480 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__8b2d1522_fac6_4b42_80ab_6d8eb32b370b.f1} = ${table2__5e8d0344_4551_45ff_b532_cad26ab76480.f2} ;;
}
}


view: table1__8b2d1522_fac6_4b42_80ab_6d8eb32b370b {
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


view: table2__5e8d0344_4551_45ff_b532_cad26ab76480 {
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