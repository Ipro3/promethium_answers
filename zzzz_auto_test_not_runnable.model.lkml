
connection:"pmdevpresto"


explore: table1__90444387_1895_4ce9_af59_00c18439301d {

join: table2__39db2716_b77c_424a_bb4a_fa867b4cd97f {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__90444387_1895_4ce9_af59_00c18439301d.f1} = ${table2__39db2716_b77c_424a_bb4a_fa867b4cd97f.f2} ;;
}
}


view: table1__90444387_1895_4ce9_af59_00c18439301d {
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


view: table2__39db2716_b77c_424a_bb4a_fa867b4cd97f {
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