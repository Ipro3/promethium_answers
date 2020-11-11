
connection:"pmdevpresto"


explore: table1__b6c7c7a9_2d7a_4d16_a64d_21b7aecd43d6 {

join: table2__ad69de6c_81d1_4391_aed5_f6604a4700ea {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__b6c7c7a9_2d7a_4d16_a64d_21b7aecd43d6.f1} = ${table2__ad69de6c_81d1_4391_aed5_f6604a4700ea.f2} ;;
}
}


view: table1__b6c7c7a9_2d7a_4d16_a64d_21b7aecd43d6 {
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


view: table2__ad69de6c_81d1_4391_aed5_f6604a4700ea {
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