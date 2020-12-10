
connection:"pmdevpresto"


explore: table1__9a304f26_315c_48b2_852f_5bab3c2c571f {

join: table2__62dda66d_301c_49b6_883e_ac0c5a829dd0 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__9a304f26_315c_48b2_852f_5bab3c2c571f.f1} = ${table2__62dda66d_301c_49b6_883e_ac0c5a829dd0.f2} ;;
}
}


view: table1__9a304f26_315c_48b2_852f_5bab3c2c571f {
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


view: table2__62dda66d_301c_49b6_883e_ac0c5a829dd0 {
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