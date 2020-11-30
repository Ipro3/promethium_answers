
connection:"pmdevpresto"


explore: table1__64e81c53_1f7e_404a_9089_87542b4afa91 {

join: table2__48343838_2cbf_40c0_86d7_56eb6a608066 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__64e81c53_1f7e_404a_9089_87542b4afa91.f1} = ${table2__48343838_2cbf_40c0_86d7_56eb6a608066.f2} ;;
}
}


view: table1__64e81c53_1f7e_404a_9089_87542b4afa91 {
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


view: table2__48343838_2cbf_40c0_86d7_56eb6a608066 {
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