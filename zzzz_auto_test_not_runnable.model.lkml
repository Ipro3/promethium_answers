
connection:"pmdevpresto"


explore: table1__ca703ddf_04ad_4ffb_81bb_aa02476fb27d {

join: table2__a9e3a708_19fa_4895_b3c5_9105b24ad287 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__ca703ddf_04ad_4ffb_81bb_aa02476fb27d.f1} = ${table2__a9e3a708_19fa_4895_b3c5_9105b24ad287.f2} ;;
}
}


view: table1__ca703ddf_04ad_4ffb_81bb_aa02476fb27d {
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


view: table2__a9e3a708_19fa_4895_b3c5_9105b24ad287 {
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