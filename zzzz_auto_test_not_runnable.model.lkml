
connection:"pmdevpresto"


explore: table1__2c700369_3c6d_46c8_9564_3853b9c7f0d8 {

join: table2__81ac0912_7645_4ce9_9073_5ce22f4d95dc {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__2c700369_3c6d_46c8_9564_3853b9c7f0d8.f1} = ${table2__81ac0912_7645_4ce9_9073_5ce22f4d95dc.f2} ;;
}
}


view: table2__81ac0912_7645_4ce9_9073_5ce22f4d95dc {
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


view: table1__2c700369_3c6d_46c8_9564_3853b9c7f0d8 {
sql_table_name:catalog1.db1.table1 ;;
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