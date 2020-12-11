
connection:"pmdevpresto"


explore: table1__8194af6e_bf17_4464_93b2_1d240a589738 {

join: table2__d2c8855e_628c_450d_83ff_7e79ad66e54f {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__8194af6e_bf17_4464_93b2_1d240a589738.f1} = ${table2__d2c8855e_628c_450d_83ff_7e79ad66e54f.f2} ;;
}
}


view: table1__8194af6e_bf17_4464_93b2_1d240a589738 {
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


view: table2__d2c8855e_628c_450d_83ff_7e79ad66e54f {
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