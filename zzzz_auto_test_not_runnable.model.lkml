
connection:"pmdevpresto"


explore: table1__f7dcb3f4_8b88_411d_bdd0_f6ad1f88cbf6 {

join: table2__a6ef2571_4372_4c03_918d_37399afb428d {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__f7dcb3f4_8b88_411d_bdd0_f6ad1f88cbf6.f1} = ${table2__a6ef2571_4372_4c03_918d_37399afb428d.f2} ;;
}
}


view: table1__f7dcb3f4_8b88_411d_bdd0_f6ad1f88cbf6 {
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


view: table2__a6ef2571_4372_4c03_918d_37399afb428d {
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