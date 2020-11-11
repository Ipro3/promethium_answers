
connection:"pmdevpresto"


explore: table1__a9152965_8478_4a6b_93ca_66ee0c765c14 {

join: table2__a6c97b68_981f_4c93_84af_28b261cf05b4 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__a9152965_8478_4a6b_93ca_66ee0c765c14.f1} = ${table2__a6c97b68_981f_4c93_84af_28b261cf05b4.f2} ;;
}
}


view: table2__a6c97b68_981f_4c93_84af_28b261cf05b4 {
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


view: table1__a9152965_8478_4a6b_93ca_66ee0c765c14 {
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