
connection:"pmdevpresto"


explore: table1__e3e8a638_feb5_41db_aacc_85eba4006c25 {

join: table2__8c4c34cc_2b82_4376_9eff_d9445241bc8f {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__e3e8a638_feb5_41db_aacc_85eba4006c25.f1} = ${table2__8c4c34cc_2b82_4376_9eff_d9445241bc8f.f2} ;;
}
}


view: table1__e3e8a638_feb5_41db_aacc_85eba4006c25 {
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


view: table2__8c4c34cc_2b82_4376_9eff_d9445241bc8f {
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