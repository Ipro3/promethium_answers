
connection:"pmdevpresto"


explore: table1__97b13c98_0f88_48af_bc00_b704e0559e03 {

join: table2__59c9e492_2227_4582_91fb_9bbb9dacf3fa {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__97b13c98_0f88_48af_bc00_b704e0559e03.f1} = ${table2__59c9e492_2227_4582_91fb_9bbb9dacf3fa.f2} ;;
}
}


view: table1__97b13c98_0f88_48af_bc00_b704e0559e03 {
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


view: table2__59c9e492_2227_4582_91fb_9bbb9dacf3fa {
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