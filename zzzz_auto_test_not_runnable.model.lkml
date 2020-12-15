
connection:"pmdevpresto"


explore: table1__5e1da478_96dd_4c48_96c2_50494399c05a {

join: table2__e1fdf72e_8cd9_418e_93ed_042d902295a5 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__5e1da478_96dd_4c48_96c2_50494399c05a.f1} = ${table2__e1fdf72e_8cd9_418e_93ed_042d902295a5.f2} ;;
}
}


view: table2__e1fdf72e_8cd9_418e_93ed_042d902295a5 {
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


view: table1__5e1da478_96dd_4c48_96c2_50494399c05a {
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