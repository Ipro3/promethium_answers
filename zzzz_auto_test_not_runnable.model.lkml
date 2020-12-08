
connection:"pmdevpresto"


explore: table1__03703047_b1de_46e1_a8d2_83e7e7820b4e {

join: table2__be46dedd_1dec_4a70_a8d9_5a5a78c3b724 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__03703047_b1de_46e1_a8d2_83e7e7820b4e.f1} = ${table2__be46dedd_1dec_4a70_a8d9_5a5a78c3b724.f2} ;;
}
}


view: table2__be46dedd_1dec_4a70_a8d9_5a5a78c3b724 {
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


view: table1__03703047_b1de_46e1_a8d2_83e7e7820b4e {
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