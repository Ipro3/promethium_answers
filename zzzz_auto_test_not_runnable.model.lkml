
connection:"pmdevpresto"


explore: table1__10add953_ea26_479f_acbb_173ed809f822 {

join: table2__fa3b010a_ccb0_4d0f_a2fb_95848c8b5365 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__10add953_ea26_479f_acbb_173ed809f822.f1} = ${table2__fa3b010a_ccb0_4d0f_a2fb_95848c8b5365.f2} ;;
}
}


view: table1__10add953_ea26_479f_acbb_173ed809f822 {
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


view: table2__fa3b010a_ccb0_4d0f_a2fb_95848c8b5365 {
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