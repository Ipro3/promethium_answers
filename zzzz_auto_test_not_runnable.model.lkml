
connection:"pmdevpresto"


explore: table1__9efd21f8_4fab_4cce_8312_17cafa158f7d {

join: table2__a2eec38c_64ad_4e11_ae9e_67474bce0ad6 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__9efd21f8_4fab_4cce_8312_17cafa158f7d.f1} = ${table2__a2eec38c_64ad_4e11_ae9e_67474bce0ad6.f2} ;;
}
}


view: table2__a2eec38c_64ad_4e11_ae9e_67474bce0ad6 {
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


view: table1__9efd21f8_4fab_4cce_8312_17cafa158f7d {
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