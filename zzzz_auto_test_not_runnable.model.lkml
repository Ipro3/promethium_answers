
connection:"pmdevpresto"


explore: table1__63bded2f_6e69_4992_a249_04c888a26781 {

join: table2__9e501136_15f3_46d7_a595_0699bb352b28 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__63bded2f_6e69_4992_a249_04c888a26781.f1} = ${table2__9e501136_15f3_46d7_a595_0699bb352b28.f2} ;;
}
}


view: table1__63bded2f_6e69_4992_a249_04c888a26781 {
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


view: table2__9e501136_15f3_46d7_a595_0699bb352b28 {
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