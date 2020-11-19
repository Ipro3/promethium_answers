
connection:"pmdevpresto"


explore: table1__e6dc3422_d3cf_4211_a149_047370480690 {

join: table2__43f5136a_bcbe_466b_bbec_cc796106b056 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__e6dc3422_d3cf_4211_a149_047370480690.f1} = ${table2__43f5136a_bcbe_466b_bbec_cc796106b056.f2} ;;
}
}


view: table1__e6dc3422_d3cf_4211_a149_047370480690 {
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


view: table2__43f5136a_bcbe_466b_bbec_cc796106b056 {
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