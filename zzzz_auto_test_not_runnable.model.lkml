
connection:"pmdevpresto"


explore: table1__de783efe_333e_49fd_8314_41182b92042a {

join: table2__1bbed872_db0f_4677_826d_80ce71b253c6 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__de783efe_333e_49fd_8314_41182b92042a.f1} = ${table2__1bbed872_db0f_4677_826d_80ce71b253c6.f2} ;;
}
}


view: table2__1bbed872_db0f_4677_826d_80ce71b253c6 {
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


view: table1__de783efe_333e_49fd_8314_41182b92042a {
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