
connection:"pmdevpresto"


explore: table1__08acd577_9646_414d_9180_2a77667ee0e9 {

join: table2__c850d09f_ed17_4aef_b353_145cedb93578 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__08acd577_9646_414d_9180_2a77667ee0e9.f1} = ${table2__c850d09f_ed17_4aef_b353_145cedb93578.f2} ;;
}
}


view: table1__08acd577_9646_414d_9180_2a77667ee0e9 {
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


view: table2__c850d09f_ed17_4aef_b353_145cedb93578 {
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