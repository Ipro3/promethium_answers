
connection:"pmdevpresto"


explore: table1__8e295493_7ffd_4f23_914f_91b56e437fb6 {

join: table2__03548041_27f8_4a0a_956c_ada0839a5682 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__8e295493_7ffd_4f23_914f_91b56e437fb6.f1} = ${table2__03548041_27f8_4a0a_956c_ada0839a5682.f2} ;;
}
}


view: table2__03548041_27f8_4a0a_956c_ada0839a5682 {
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


view: table1__8e295493_7ffd_4f23_914f_91b56e437fb6 {
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