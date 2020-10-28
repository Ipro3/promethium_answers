
connection:"pmdevpresto"


explore: table1__dcf72059_f7d3_42ea_ada6_658435b6585f {

join: table2__9083e7fc_1ffe_4a57_9643_2d64fa91e803 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__dcf72059_f7d3_42ea_ada6_658435b6585f.f1} = ${table2__9083e7fc_1ffe_4a57_9643_2d64fa91e803.f2} ;;
}
}


view: table2__9083e7fc_1ffe_4a57_9643_2d64fa91e803 {
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


view: table1__dcf72059_f7d3_42ea_ada6_658435b6585f {
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