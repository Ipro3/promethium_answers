
connection:"pmdevpresto"


explore: table1__23621631_6ea4_4110_b969_0c45cf2839af {

join: table2__2a5e6eb8_161e_4ead_8865_1ccd0a0a56e8 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__23621631_6ea4_4110_b969_0c45cf2839af.f1} = ${table2__2a5e6eb8_161e_4ead_8865_1ccd0a0a56e8.f2} ;;
}
}


view: table1__23621631_6ea4_4110_b969_0c45cf2839af {
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


view: table2__2a5e6eb8_161e_4ead_8865_1ccd0a0a56e8 {
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