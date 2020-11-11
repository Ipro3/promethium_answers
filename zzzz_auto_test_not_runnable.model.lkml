
connection:"pmdevpresto"


explore: table1__8d4b9d9b_70c0_4d0d_8c19_80644cd66e4f {

join: table2__70dceef4_397a_4bcb_83ff_5e8b9a04c3af {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__8d4b9d9b_70c0_4d0d_8c19_80644cd66e4f.f1} = ${table2__70dceef4_397a_4bcb_83ff_5e8b9a04c3af.f2} ;;
}
}


view: table2__70dceef4_397a_4bcb_83ff_5e8b9a04c3af {
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


view: table1__8d4b9d9b_70c0_4d0d_8c19_80644cd66e4f {
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