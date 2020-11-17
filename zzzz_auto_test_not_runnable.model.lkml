
connection:"pmdevpresto"


explore: table1__abc9b796_2503_4f29_b692_3aa4ac20ee3c {

join: table2__6cf6adba_e092_4395_b5b2_fd7f4ad529b2 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__abc9b796_2503_4f29_b692_3aa4ac20ee3c.f1} = ${table2__6cf6adba_e092_4395_b5b2_fd7f4ad529b2.f2} ;;
}
}


view: table1__abc9b796_2503_4f29_b692_3aa4ac20ee3c {
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


view: table2__6cf6adba_e092_4395_b5b2_fd7f4ad529b2 {
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