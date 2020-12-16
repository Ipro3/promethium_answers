
connection:"pmdevpresto"


explore: table1__20a62386_2c2c_4c37_bcde_d806487823a3 {

join: table2__9e1f3d5f_cfe7_45d4_969d_64d203a3d064 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__20a62386_2c2c_4c37_bcde_d806487823a3.f1} = ${table2__9e1f3d5f_cfe7_45d4_969d_64d203a3d064.f2} ;;
}
}


view: table1__20a62386_2c2c_4c37_bcde_d806487823a3 {
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


view: table2__9e1f3d5f_cfe7_45d4_969d_64d203a3d064 {
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