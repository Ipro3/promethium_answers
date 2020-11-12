
connection:"pmdevpresto"


explore: table1__c8ef6d2e_0eba_44bf_b98c_bb342af2c65c {

join: table2__aa74231e_2db8_421f_ad75_c1b0251e4c33 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__c8ef6d2e_0eba_44bf_b98c_bb342af2c65c.f1} = ${table2__aa74231e_2db8_421f_ad75_c1b0251e4c33.f2} ;;
}
}


view: table2__aa74231e_2db8_421f_ad75_c1b0251e4c33 {
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


view: table1__c8ef6d2e_0eba_44bf_b98c_bb342af2c65c {
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