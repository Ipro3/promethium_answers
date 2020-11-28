
connection:"pmdevpresto"


explore: table1__adced3af_2275_4218_8cce_dc219db85d53 {

join: table2__ce0be80f_aa49_4a08_86e6_0472dde7f4af {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__adced3af_2275_4218_8cce_dc219db85d53.f1} = ${table2__ce0be80f_aa49_4a08_86e6_0472dde7f4af.f2} ;;
}
}


view: table1__adced3af_2275_4218_8cce_dc219db85d53 {
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


view: table2__ce0be80f_aa49_4a08_86e6_0472dde7f4af {
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