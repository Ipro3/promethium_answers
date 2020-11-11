
connection:"pmdevpresto"


explore: table1__30b31cd1_40f7_4abd_a94e_3b3ac7224728 {

join: table2__93176112_329c_49eb_beb8_d0114ae103db {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__30b31cd1_40f7_4abd_a94e_3b3ac7224728.f1} = ${table2__93176112_329c_49eb_beb8_d0114ae103db.f2} ;;
}
}


view: table1__30b31cd1_40f7_4abd_a94e_3b3ac7224728 {
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


view: table2__93176112_329c_49eb_beb8_d0114ae103db {
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