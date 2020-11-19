
connection:"pmdevpresto"


explore: table1__b50b1f3e_f09f_4007_876e_dfff8266f3a0 {

join: table2__0241a2cf_f1b0_4779_8167_fb0cf19de069 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__b50b1f3e_f09f_4007_876e_dfff8266f3a0.f1} = ${table2__0241a2cf_f1b0_4779_8167_fb0cf19de069.f2} ;;
}
}


view: table2__0241a2cf_f1b0_4779_8167_fb0cf19de069 {
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


view: table1__b50b1f3e_f09f_4007_876e_dfff8266f3a0 {
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