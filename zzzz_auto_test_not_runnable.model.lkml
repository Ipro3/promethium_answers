
connection:"pmdevpresto"


explore: table1__1e4de92f_004f_4134_ad8b_597728b7cb38 {

join: table2__16ec3834_72ae_4a63_b8ad_0f76aa0e8a9b {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__1e4de92f_004f_4134_ad8b_597728b7cb38.f1} = ${table2__16ec3834_72ae_4a63_b8ad_0f76aa0e8a9b.f2} ;;
}
}


view: table2__16ec3834_72ae_4a63_b8ad_0f76aa0e8a9b {
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


view: table1__1e4de92f_004f_4134_ad8b_597728b7cb38 {
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