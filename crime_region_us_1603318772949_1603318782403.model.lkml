
connection:"presto-qa-1"


explore: US_REGIONS__fd645a3c_bcae_4943_9952_cbcc01d2a944 {

join: COMBINED_CRIME_INCIDENTS__63c549f0_e9a3_4b82_9675_5d7b64f4890e {
 relationship: one_to_one
 sql_on: ${US_REGIONS__fd645a3c_bcae_4943_9952_cbcc01d2a944.REGION_CODE} = ${COMBINED_CRIME_INCIDENTS__63c549f0_e9a3_4b82_9675_5d7b64f4890e.REGION_CODE} ;;
}
}


view: US_REGIONS__fd645a3c_bcae_4943_9952_cbcc01d2a944 {
sql_table_name:promethium.promethium.US_REGIONS ;;
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


view: COMBINED_CRIME_INCIDENTS__63c549f0_e9a3_4b82_9675_5d7b64f4890e {
sql_table_name:promethium.promethium.COMBINED_CRIME_INCIDENTS ;;
dimension: SERIES_ID {
 sql: ${TABLE}.SERIES_ID;;
}
dimension: REGION_CODE {
 sql: ${TABLE}.REGION_CODE;;
}
measure: COMBINED_CRIME_INCIDENTS {
type:count_distinct
 sql: ${TABLE}.COMBINED_CRIME_INCIDENTS;;
}
dimension: YEAR {
 sql: ${TABLE}.YEAR;;
}
}