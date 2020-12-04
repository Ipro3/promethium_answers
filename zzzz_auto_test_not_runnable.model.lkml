
connection:"pmdevpresto"


explore: table1__a489a387_b1c0_47d7_9167_48294386d51c {

join: table2__d6013721_3e51_4402_92ce_2994444caee5 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__a489a387_b1c0_47d7_9167_48294386d51c.f1} = ${table2__d6013721_3e51_4402_92ce_2994444caee5.f2} ;;
}
}


view: table1__a489a387_b1c0_47d7_9167_48294386d51c {
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


view: table2__d6013721_3e51_4402_92ce_2994444caee5 {
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