
connection:"pmdevpresto"


explore: table1__c3a8b571_abb1_4e02_a683_daa75a708ce0 {

join: table2__7be55415_477e_4b4f_b0b3_5b017d567f48 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__c3a8b571_abb1_4e02_a683_daa75a708ce0.f1} = ${table2__7be55415_477e_4b4f_b0b3_5b017d567f48.f2} ;;
}
}


view: table1__c3a8b571_abb1_4e02_a683_daa75a708ce0 {
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
}


view: table2__7be55415_477e_4b4f_b0b3_5b017d567f48 {
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
}