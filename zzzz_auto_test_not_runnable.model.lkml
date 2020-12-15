
connection:"pmdevpresto"


explore: table1__cece54b9_b676_4ddf_9103_a4c9cb47fc61 {

join: table2__717bc546_a7d0_4e6f_80bb_316e27891513 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__cece54b9_b676_4ddf_9103_a4c9cb47fc61.f1} = ${table2__717bc546_a7d0_4e6f_80bb_316e27891513.f2} ;;
}
}


view: table1__cece54b9_b676_4ddf_9103_a4c9cb47fc61 {
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


view: table2__717bc546_a7d0_4e6f_80bb_316e27891513 {
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