
connection:"pmdevpresto"


explore: table1__ccbf7622_7c13_474c_8191_effd746e0a5d {

join: table2__1210fc3b_c513_4508_896c_35150f52a1ad {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__ccbf7622_7c13_474c_8191_effd746e0a5d.f1} = ${table2__1210fc3b_c513_4508_896c_35150f52a1ad.f2} ;;
}
}


view: table2__1210fc3b_c513_4508_896c_35150f52a1ad {
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


view: table1__ccbf7622_7c13_474c_8191_effd746e0a5d {
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