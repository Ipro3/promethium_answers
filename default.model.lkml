
connection:"presto-qa-1"


explore: null {

join: null {
 relationship: one_to_one;;
}
join: null {
 relationship: one_to_one;;
}
join: null {
 relationship: one_to_one;;
}
}


view: geographic_dimension__2369f2c3_286c_45e0_9080_f10266907dd7 {
sql_table_name: ;;
dimension: geographic_area {
 sql: ${TABLE}.geographic_area;;
}
dimension: geographic_area_name {
 sql: ${TABLE}.geographic_area_name;;
}
dimension: location_type_code {
 sql: ${TABLE}.location_type_code;;
}
dimension: region {
 sql: ${TABLE}.region;;
}
dimension: country {
 sql: ${TABLE}.country;;
}
dimension: other_region_details {
 sql: ${TABLE}.other_region_details;;
}
}


view: GEOGRAPHIC_DIMENSION__5742e394_c4e4_457b_9b06_7b7be3b47a05 {
sql_table_name: ;;
dimension: GEOGRAPHIC_AREA {
 sql: ${TABLE}.GEOGRAPHIC_AREA;;
}
dimension: GEOGRAPHIC_AREA_NAME {
 sql: ${TABLE}.GEOGRAPHIC_AREA_NAME;;
}
dimension: LOCATION_TYPE_CODE {
 sql: ${TABLE}.LOCATION_TYPE_CODE;;
}
dimension: REGION {
 sql: ${TABLE}.REGION;;
}
dimension: COUNTRY {
 sql: ${TABLE}.COUNTRY;;
}
dimension: OTHER_REGION_DETAILS {
 sql: ${TABLE}.OTHER_REGION_DETAILS;;
}
}


view: COMBINED_CRIME_INCIDENTS__40e2c14a_3577_4bf1_83dd_dc86a07d0c78 {
sql_table_name: ;;
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
}


view: COMBINED_CRIME_INCIDENTS__4dfa1c97_ca31_47e9_a733_7218524b25b7 {
sql_table_name: ;;
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
}