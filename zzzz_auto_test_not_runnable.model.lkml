
connection:"pmdevpresto"


explore: table1__4baaecfa_19b4_437c_988c_713b3ff4737d {

join: table2__c9c0e46d_d07d_4c96_8cf5_534761b78a34 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__4baaecfa_19b4_437c_988c_713b3ff4737d.f1} = ${table2__c9c0e46d_d07d_4c96_8cf5_534761b78a34.f2} ;;
}
}


view: table2__c9c0e46d_d07d_4c96_8cf5_534761b78a34 {
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


view: table1__4baaecfa_19b4_437c_988c_713b3ff4737d {
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