
connection:"pmdevpresto"


explore: table1__a12ae555_985e_4bb5_afe8_cfe7b8ddf1bf {

join: table2__6e02c905_7644_49de_95a5_41782c5afd0a {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__a12ae555_985e_4bb5_afe8_cfe7b8ddf1bf.f1} = ${table2__6e02c905_7644_49de_95a5_41782c5afd0a.f2} ;;
}
}


view: table2__6e02c905_7644_49de_95a5_41782c5afd0a {
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


view: table1__a12ae555_985e_4bb5_afe8_cfe7b8ddf1bf {
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