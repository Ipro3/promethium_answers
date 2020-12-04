
connection:"pmdevpresto"


explore: table1__0d005a81_8b48_45af_9e81_ae6762fcc95e {

join: table2__17d7cf60_5859_4504_ba7e_f4a3c5985b2b {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__0d005a81_8b48_45af_9e81_ae6762fcc95e.f1} = ${table2__17d7cf60_5859_4504_ba7e_f4a3c5985b2b.f2} ;;
}
}


view: table2__17d7cf60_5859_4504_ba7e_f4a3c5985b2b {
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


view: table1__0d005a81_8b48_45af_9e81_ae6762fcc95e {
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