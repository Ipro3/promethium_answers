
connection:"pmdevpresto"


explore: table1__490383cb_df8b_47a3_83e6_627b3fd1b351 {

join: table2__18a936d4_0559_4b6e_9f6c_9cb784866065 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__490383cb_df8b_47a3_83e6_627b3fd1b351.f1} = ${table2__18a936d4_0559_4b6e_9f6c_9cb784866065.f2} ;;
}
}


view: table2__18a936d4_0559_4b6e_9f6c_9cb784866065 {
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


view: table1__490383cb_df8b_47a3_83e6_627b3fd1b351 {
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