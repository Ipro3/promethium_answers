
connection:"pmdevpresto"


explore: table1__b74a61a3_6b2e_436f_9e93_6aa53e85e103 {

join: table2__03c5588c_6b3c_4dbe_af1c_16b07e38e608 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__b74a61a3_6b2e_436f_9e93_6aa53e85e103.f1} = ${table2__03c5588c_6b3c_4dbe_af1c_16b07e38e608.f2} ;;
}
}


view: table2__03c5588c_6b3c_4dbe_af1c_16b07e38e608 {
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


view: table1__b74a61a3_6b2e_436f_9e93_6aa53e85e103 {
sql_table_name:catalog1.db1.table1 ;;
  dimension: primary_key {
  primary_key: yes
  sql: CONCAT(${TABLE}.f1, ${TABLE}.f2, ${TABLE}.f3) ;;
}
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