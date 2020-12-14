
connection:"pmdevpresto"


explore: table1__13308b45_949e_4376_9605_0568ba83e836 {

join: table2__02f7f0c6_addb_4d97_9330_1fce3bb62abc {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__13308b45_949e_4376_9605_0568ba83e836.f1} = ${table2__02f7f0c6_addb_4d97_9330_1fce3bb62abc.f2} ;;
}
}


view: table2__02f7f0c6_addb_4d97_9330_1fce3bb62abc {
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


view: table1__13308b45_949e_4376_9605_0568ba83e836 {
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