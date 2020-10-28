
connection:"pmdevpresto"


explore: US_REGIONS__79bbdc6f_eca6_4ea4_aa13_badc129d0444 {

join: COMBINED_CRIME_INCIDENTS__2f35b6de_3902_44b0_815e_1bcbd828ce29 {
 type: inner
 relationship: many_to_one
 sql_on: ${US_REGIONS__79bbdc6f_eca6_4ea4_aa13_badc129d0444.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__2f35b6de_3902_44b0_815e_1bcbd828ce29.REGION_CODE} ;;
}
}


view: US_REGIONS__79bbdc6f_eca6_4ea4_aa13_badc129d0444 {
sql_table_name:mysql_v3.promethium.US_REGIONS ;;
dimension: REGION_CODE {
 sql: ${TABLE}.REGION_CODE;;
}
dimension: REGION_NAME {
 sql: ${TABLE}.REGION_NAME;;
}
dimension: US_STATE {
 sql: ${TABLE}.US_STATE;;
}
}


view: COMBINED_CRIME_INCIDENTS__2f35b6de_3902_44b0_815e_1bcbd828ce29 {
sql_table_name:mysql_v3.promethium.COMBINED_CRIME_INCIDENTS ;;
dimension: SERIES_ID {
 sql: ${TABLE}.SERIES_ID;;
}
dimension: REGION_CODE {
 sql: ${TABLE}.REGION_CODE;;
}
dimension: COMBINED_CRIME_INCIDENTS {
 sql: ${TABLE}.COMBINED_CRIME_INCIDENTS;;
}
dimension: YEAR {
 sql: ${TABLE}.YEAR;;
}
measure: COMBINED_CRIME_INCIDENTS_count {
type:count
 drill_fields: [detail*]
}
measure: COMBINED_CRIME_INCIDENTS_sum {
type:sum
sql: ${COMBINED_CRIME_INCIDENTS} ;;
 drill_fields: [detail*]
}
set: detail {
fields: [SERIES_ID, COMBINED_CRIME_INCIDENTS]
}
}