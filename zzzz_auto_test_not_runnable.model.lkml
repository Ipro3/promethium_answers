
connection:"pmdevpresto"


explore: table1__556f654e_d457_435f_bdd6_af2e2d8a9595 {

join: table2__85536f43_6ae1_4c24_a994_90b05897e34e {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__556f654e_d457_435f_bdd6_af2e2d8a9595.f1} = ${table2__85536f43_6ae1_4c24_a994_90b05897e34e.f2} ;;
}
}


view: table1__556f654e_d457_435f_bdd6_af2e2d8a9595 {
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


view: table2__85536f43_6ae1_4c24_a994_90b05897e34e {
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