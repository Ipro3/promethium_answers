
connection:"pmdevpresto"


explore: table1__b448d289_cf97_437d_aa69_8ce8aef7036a {

join: table2__9722b761_fbe9_4c2b_af7f_d14ed18d7abe {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__b448d289_cf97_437d_aa69_8ce8aef7036a.f1} = ${table2__9722b761_fbe9_4c2b_af7f_d14ed18d7abe.f2} ;;
}
}


view: table1__b448d289_cf97_437d_aa69_8ce8aef7036a {
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


view: table2__9722b761_fbe9_4c2b_af7f_d14ed18d7abe {
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