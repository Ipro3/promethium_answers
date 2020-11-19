
connection:"pmdevpresto"


explore: table1__75aa42f4_a8ee_4308_8b1d_04f1ea36f70a {

join: table2__104b6b11_244e_4b86_8004_ec1c9919821f {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__75aa42f4_a8ee_4308_8b1d_04f1ea36f70a.f1} = ${table2__104b6b11_244e_4b86_8004_ec1c9919821f.f2} ;;
}
}


view: table2__104b6b11_244e_4b86_8004_ec1c9919821f {
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


view: table1__75aa42f4_a8ee_4308_8b1d_04f1ea36f70a {
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