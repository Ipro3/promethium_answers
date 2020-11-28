
connection:"pmdevpresto"


explore: table1__c465a780_0eda_40c7_b45e_708bdd20cbfa {

join: table2__9f6fee85_057e_432f_b1e7_fbc4df72cf1e {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__c465a780_0eda_40c7_b45e_708bdd20cbfa.f1} = ${table2__9f6fee85_057e_432f_b1e7_fbc4df72cf1e.f2} ;;
}
}


view: table2__9f6fee85_057e_432f_b1e7_fbc4df72cf1e {
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


view: table1__c465a780_0eda_40c7_b45e_708bdd20cbfa {
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