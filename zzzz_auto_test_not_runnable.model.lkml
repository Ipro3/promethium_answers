
connection:"pmdevpresto"


explore: table1__62135ec1_3608_46b4_ba7d_ecc3683b130a {

join: table2__15a58e79_f830_4a86_89b8_cbc19d5efe0f {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__62135ec1_3608_46b4_ba7d_ecc3683b130a.f1} = ${table2__15a58e79_f830_4a86_89b8_cbc19d5efe0f.f2} ;;
}
}


view: table1__62135ec1_3608_46b4_ba7d_ecc3683b130a {
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


view: table2__15a58e79_f830_4a86_89b8_cbc19d5efe0f {
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