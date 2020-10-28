
connection:"pmdevpresto"


explore: table1__f020ab2c_0b0e_4be2_9fad_bd0e0f9ed1a0 {

join: table2__c6f3d2d2_b6e0_48ea_8589_3c41691d0f13 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__f020ab2c_0b0e_4be2_9fad_bd0e0f9ed1a0.f1} = ${table2__c6f3d2d2_b6e0_48ea_8589_3c41691d0f13.f2} ;;
}
}


view: table1__f020ab2c_0b0e_4be2_9fad_bd0e0f9ed1a0 {
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


view: table2__c6f3d2d2_b6e0_48ea_8589_3c41691d0f13 {
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