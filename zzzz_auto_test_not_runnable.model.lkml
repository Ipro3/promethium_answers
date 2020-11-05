
connection:"pmdevpresto"


explore: table1__05bf8366_8e20_4228_b290_425cf8f4e094 {

join: table2__7b5ca891_057d_48f5_ab5e_30a4b1dab0df {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__05bf8366_8e20_4228_b290_425cf8f4e094.f1} = ${table2__7b5ca891_057d_48f5_ab5e_30a4b1dab0df.f2} ;;
}
}


view: table1__05bf8366_8e20_4228_b290_425cf8f4e094 {
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
}


view: table2__7b5ca891_057d_48f5_ab5e_30a4b1dab0df {
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
}