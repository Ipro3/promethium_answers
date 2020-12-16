
connection:"pmdevpresto"


explore: table1__74237cec_ea60_4d6c_985a_fac4c890c20b {

join: table2__3d815bfb_2b56_4528_875e_d1ecdfe53c33 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__74237cec_ea60_4d6c_985a_fac4c890c20b.f1} = ${table2__3d815bfb_2b56_4528_875e_d1ecdfe53c33.f2} ;;
}
}


view: table2__3d815bfb_2b56_4528_875e_d1ecdfe53c33 {
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


view: table1__74237cec_ea60_4d6c_985a_fac4c890c20b {
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