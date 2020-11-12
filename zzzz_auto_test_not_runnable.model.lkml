
connection:"pmdevpresto"


explore: table1__064f543b_c7da_4f10_8b00_8f4517060520 {

join: table2__963acab5_a795_4043_82ea_3f96a9fd5712 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__064f543b_c7da_4f10_8b00_8f4517060520.f1} = ${table2__963acab5_a795_4043_82ea_3f96a9fd5712.f2} ;;
}
}


view: table1__064f543b_c7da_4f10_8b00_8f4517060520 {
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


view: table2__963acab5_a795_4043_82ea_3f96a9fd5712 {
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