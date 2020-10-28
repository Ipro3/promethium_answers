
connection:"pmdevpresto"


explore: table1__eb8e11bc_92ad_4be6_a558_d685bdaf3e56 {

join: table2__92af89f1_95c0_4e2a_9979_764fb76024ba {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__eb8e11bc_92ad_4be6_a558_d685bdaf3e56.f1} = ${table2__92af89f1_95c0_4e2a_9979_764fb76024ba.f2} ;;
}
}


view: table1__eb8e11bc_92ad_4be6_a558_d685bdaf3e56 {
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


view: table2__92af89f1_95c0_4e2a_9979_764fb76024ba {
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