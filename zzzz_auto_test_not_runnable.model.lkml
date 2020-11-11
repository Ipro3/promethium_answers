
connection:"pmdevpresto"


explore: table1__df770ce1_4412_4797_bbe8_f05bc2e740d1 {

join: table2__315eb5db_5732_418e_90b6_15bb96a504a5 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__df770ce1_4412_4797_bbe8_f05bc2e740d1.f1} = ${table2__315eb5db_5732_418e_90b6_15bb96a504a5.f2} ;;
}
}


view: table2__315eb5db_5732_418e_90b6_15bb96a504a5 {
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


view: table1__df770ce1_4412_4797_bbe8_f05bc2e740d1 {
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