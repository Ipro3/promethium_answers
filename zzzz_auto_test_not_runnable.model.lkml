
connection:"pmdevpresto"


explore: table1__13a8aa72_e334_4768_bc40_1848d7fe6b47 {

join: table2__97f4ed05_cbc0_4223_9866_5a621f741cd4 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__13a8aa72_e334_4768_bc40_1848d7fe6b47.f1} = ${table2__97f4ed05_cbc0_4223_9866_5a621f741cd4.f2} ;;
}
}


view: table1__13a8aa72_e334_4768_bc40_1848d7fe6b47 {
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


view: table2__97f4ed05_cbc0_4223_9866_5a621f741cd4 {
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