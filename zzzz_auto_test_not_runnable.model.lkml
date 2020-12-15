
connection:"pmdevpresto"


explore: table1__fe00a75a_8bff_4197_9e89_af9e54dcdd94 {

join: table2__edec4c10_edac_4308_b56d_2bcdc2c50cae {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__fe00a75a_8bff_4197_9e89_af9e54dcdd94.f1} = ${table2__edec4c10_edac_4308_b56d_2bcdc2c50cae.f2} ;;
}
}


view: table2__edec4c10_edac_4308_b56d_2bcdc2c50cae {
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


view: table1__fe00a75a_8bff_4197_9e89_af9e54dcdd94 {
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