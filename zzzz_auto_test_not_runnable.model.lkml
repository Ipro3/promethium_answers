
connection:"pmdevpresto"


explore: table1__2ada0b95_b154_41df_af35_3f2a98681d3c {

join: table2__820bd104_4de0_45fb_8db5_94f2861e6190 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__2ada0b95_b154_41df_af35_3f2a98681d3c.f1} = ${table2__820bd104_4de0_45fb_8db5_94f2861e6190.f2} ;;
}
}


view: table1__2ada0b95_b154_41df_af35_3f2a98681d3c {
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


view: table2__820bd104_4de0_45fb_8db5_94f2861e6190 {
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