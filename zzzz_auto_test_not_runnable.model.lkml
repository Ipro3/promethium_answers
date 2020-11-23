
connection:"pmdevpresto"


explore: table1__40262fa9_6987_4af9_8ac4_bbef0822ef82 {

join: table2__95473f34_0384_4b96_8308_31b6363ef4be {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__40262fa9_6987_4af9_8ac4_bbef0822ef82.f1} = ${table2__95473f34_0384_4b96_8308_31b6363ef4be.f2} ;;
}
}


view: table1__40262fa9_6987_4af9_8ac4_bbef0822ef82 {
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


view: table2__95473f34_0384_4b96_8308_31b6363ef4be {
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