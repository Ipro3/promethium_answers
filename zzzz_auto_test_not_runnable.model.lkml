
connection:"pmdevpresto"


explore: table1__3897ac42_ad3c_43ac_aa1a_3826361bb96f {

join: table2__e03b4db9_4342_4820_8f73_c9132378ee85 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__3897ac42_ad3c_43ac_aa1a_3826361bb96f.f1} = ${table2__e03b4db9_4342_4820_8f73_c9132378ee85.f2} ;;
}
}


view: table2__e03b4db9_4342_4820_8f73_c9132378ee85 {
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


view: table1__3897ac42_ad3c_43ac_aa1a_3826361bb96f {
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