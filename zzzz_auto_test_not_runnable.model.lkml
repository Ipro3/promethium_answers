
connection:"pmdevpresto"


explore: table1__5417142d_a27c_4058_9396_06e94726c44b {

join: table2__1927dc55_7ae4_40da_81f4_c5e552dfb6d6 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__5417142d_a27c_4058_9396_06e94726c44b.f1} = ${table2__1927dc55_7ae4_40da_81f4_c5e552dfb6d6.f2} ;;
}
}


view: table1__5417142d_a27c_4058_9396_06e94726c44b {
sql_table_name:catalog1.db1.table1 ;;dimension: primary_key {
  primary_key: yessql: CONCAT(${TABLE}.f1, ${TABLE}.f2, ${TABLE}.f3) ;;
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


view: table2__1927dc55_7ae4_40da_81f4_c5e552dfb6d6 {
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