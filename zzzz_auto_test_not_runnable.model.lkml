
connection:"pmdevpresto"


explore: table1__9dcf0454_087d_4cdd_9779_c5ae98fbd8e0 {

join: table2__6abc5a7e_6242_4995_ac5b_7da73bd3d110 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__9dcf0454_087d_4cdd_9779_c5ae98fbd8e0.f1} = ${table2__6abc5a7e_6242_4995_ac5b_7da73bd3d110.f2} ;;
}
}


view: table2__6abc5a7e_6242_4995_ac5b_7da73bd3d110 {
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


view: table1__9dcf0454_087d_4cdd_9779_c5ae98fbd8e0 {
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