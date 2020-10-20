
connection:"pmdevpresto"


explore: table1__c8757858_5681_4d36_9705_37459c8034c4 {

join: table2__23e0edb6_5b73_458b_8399_c2abf5e6da4d {
 relationship: one_to_one
 sql_on: ${table1__c8757858_5681_4d36_9705_37459c8034c4.f1} = ${table2__23e0edb6_5b73_458b_8399_c2abf5e6da4d.f2} ;;
}
}


view: table2__23e0edb6_5b73_458b_8399_c2abf5e6da4d {
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


view: table1__c8757858_5681_4d36_9705_37459c8034c4 {
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