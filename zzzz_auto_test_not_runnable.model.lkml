
connection:"pmdevpresto"


explore: table1__5a67303e_b560_464e_ae1d_b3a85ffba464 {

join: table2__c47d581d_443b_42f5_b64b_1f273af996c4 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__5a67303e_b560_464e_ae1d_b3a85ffba464.f1} = ${table2__c47d581d_443b_42f5_b64b_1f273af996c4.f2} ;;
}
}


view: table2__c47d581d_443b_42f5_b64b_1f273af996c4 {
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


view: table1__5a67303e_b560_464e_ae1d_b3a85ffba464 {
sql_table_name:catalog1.db1.table1 ;;
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