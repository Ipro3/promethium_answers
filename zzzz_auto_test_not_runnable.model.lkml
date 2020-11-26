
connection:"pmdevpresto"


explore: table1__c5f32945_7a7e_4cd3_815d_c3f6f6c71803 {

join: table2__495b84e6_fe33_4a5d_98db_b0bf1f355ab2 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__c5f32945_7a7e_4cd3_815d_c3f6f6c71803.f1} = ${table2__495b84e6_fe33_4a5d_98db_b0bf1f355ab2.f2} ;;
}
}


view: table1__c5f32945_7a7e_4cd3_815d_c3f6f6c71803 {
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


view: table2__495b84e6_fe33_4a5d_98db_b0bf1f355ab2 {
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