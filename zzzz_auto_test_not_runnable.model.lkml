
connection:"pmdevpresto"


explore: table1__b9456dfe_c899_49a1_a757_933bd2ecbb5d {

join: table2__16251487_4774_4b45_8e85_52ecd3cc0ad7 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__b9456dfe_c899_49a1_a757_933bd2ecbb5d.f1} = ${table2__16251487_4774_4b45_8e85_52ecd3cc0ad7.f2} ;;
}
}


view: table2__16251487_4774_4b45_8e85_52ecd3cc0ad7 {
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


view: table1__b9456dfe_c899_49a1_a757_933bd2ecbb5d {
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