
connection:"pmdevpresto"


explore: table1__bf7be6ba_8a92_4af2_a73c_200097e39ab6 {

join: table2__dc23bf48_c5e7_4e39_a61c_c1a2f5492152 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__bf7be6ba_8a92_4af2_a73c_200097e39ab6.f1} = ${table2__dc23bf48_c5e7_4e39_a61c_c1a2f5492152.f2} ;;
}
}


view: table2__dc23bf48_c5e7_4e39_a61c_c1a2f5492152 {
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


view: table1__bf7be6ba_8a92_4af2_a73c_200097e39ab6 {
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