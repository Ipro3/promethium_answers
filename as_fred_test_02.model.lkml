
connection:"presto-qa-1"


explore: US_REGIONS__58a52db7_56d3_4911_91ce_b311ea577c0f {

join: MEAN_REAL_WAGES_COLA__b074c0ad_ad67_44c0_8b96_d62e3d86f7d2 {
 relationship: one_to_one
 sql_on: ${US_REGIONS__58a52db7_56d3_4911_91ce_b311ea577c0f.REGION_CODE} = ${MEAN_REAL_WAGES_COLA__b074c0ad_ad67_44c0_8b96_d62e3d86f7d2.REGION_CODE} ;;
}
join: HOMEOWNERSHIP_RATE__783f2727_517b_45d5_a6c3_e0401b1806c9 {
 relationship: one_to_one
 sql_on: ${US_REGIONS__58a52db7_56d3_4911_91ce_b311ea577c0f.REGION_CODE} = ${HOMEOWNERSHIP_RATE__783f2727_517b_45d5_a6c3_e0401b1806c9.REGION_CODE} ;;
}
join: UNEMPLOYMENT_RATE__da2ff681_abf3_404e_a400_7c45953b4e27 {
 relationship: one_to_one
 sql_on: ${US_REGIONS__58a52db7_56d3_4911_91ce_b311ea577c0f.REGION_CODE} = ${UNEMPLOYMENT_RATE__da2ff681_abf3_404e_a400_7c45953b4e27.REGION_CODE} ;;
}
join: BACHELOR_DEGREE_OR_HIGHER__20f79434_c14b_471f_8a68_908c0d9c7332 {
 relationship: one_to_one
 sql_on: ${US_REGIONS__58a52db7_56d3_4911_91ce_b311ea577c0f.REGION_CODE} = ${BACHELOR_DEGREE_OR_HIGHER__20f79434_c14b_471f_8a68_908c0d9c7332.REGION_CODE} ;;
}
join: PER_CAPITA_PERSONAL_INCOME__74597efe_5664_4e92_b5db_ef54c09feca9 {
 relationship: one_to_one
 sql_on: ${US_REGIONS__58a52db7_56d3_4911_91ce_b311ea577c0f.REGION_CODE} = ${PER_CAPITA_PERSONAL_INCOME__74597efe_5664_4e92_b5db_ef54c09feca9.REGION_CODE} 
 and ${BACHELOR_DEGREE_OR_HIGHER__20f79434_c14b_471f_8a68_908c0d9c7332.YEAR} = ${PER_CAPITA_PERSONAL_INCOME__74597efe_5664_4e92_b5db_ef54c09feca9.YEAR} 
 and ${PER_CAPITA_PERSONAL_INCOME__74597efe_5664_4e92_b5db_ef54c09feca9.YEAR} = ${MEAN_REAL_WAGES_COLA__b074c0ad_ad67_44c0_8b96_d62e3d86f7d2.YEAR} ;;
}
join: PERSONAL_INCOME__bfd2fa22_0756_417a_89c3_2a57abbae774 {
 relationship: one_to_one
 sql_on: ${US_REGIONS__58a52db7_56d3_4911_91ce_b311ea577c0f.REGION_CODE} = ${PERSONAL_INCOME__bfd2fa22_0756_417a_89c3_2a57abbae774.REGION_CODE} 
 and ${UNEMPLOYMENT_RATE__da2ff681_abf3_404e_a400_7c45953b4e27.YEAR} = ${PERSONAL_INCOME__bfd2fa22_0756_417a_89c3_2a57abbae774.YEAR} 
 and ${PERSONAL_INCOME__bfd2fa22_0756_417a_89c3_2a57abbae774.YEAR} = ${BACHELOR_DEGREE_OR_HIGHER__20f79434_c14b_471f_8a68_908c0d9c7332.YEAR} ;;
}
join: RESIDENT_POPULATION__e1c0787d_ffc8_41f8_8586_36ecc1648905 {
 relationship: one_to_one
 sql_on: ${US_REGIONS__58a52db7_56d3_4911_91ce_b311ea577c0f.REGION_CODE} = ${RESIDENT_POPULATION__e1c0787d_ffc8_41f8_8586_36ecc1648905.REGION_CODE} 
 and ${HOMEOWNERSHIP_RATE__783f2727_517b_45d5_a6c3_e0401b1806c9.YEAR} = ${RESIDENT_POPULATION__e1c0787d_ffc8_41f8_8586_36ecc1648905.YEAR} 
 and ${RESIDENT_POPULATION__e1c0787d_ffc8_41f8_8586_36ecc1648905.YEAR} = ${UNEMPLOYMENT_RATE__da2ff681_abf3_404e_a400_7c45953b4e27.YEAR} ;;
}
join: EST_MEDIAN_HOUSEHOLD_INCOME__354b8aa7_aef8_4c10_a6b3_56fa2aef9a20 {
 relationship: one_to_one
 sql_on: ${US_REGIONS__58a52db7_56d3_4911_91ce_b311ea577c0f.REGION_CODE} = ${EST_MEDIAN_HOUSEHOLD_INCOME__354b8aa7_aef8_4c10_a6b3_56fa2aef9a20.REGION_CODE} 
 and ${MEAN_REAL_WAGES_COLA__b074c0ad_ad67_44c0_8b96_d62e3d86f7d2.YEAR} = ${EST_MEDIAN_HOUSEHOLD_INCOME__354b8aa7_aef8_4c10_a6b3_56fa2aef9a20.YEAR} 
 and ${EST_MEDIAN_HOUSEHOLD_INCOME__354b8aa7_aef8_4c10_a6b3_56fa2aef9a20.YEAR} = ${HOMEOWNERSHIP_RATE__783f2727_517b_45d5_a6c3_e0401b1806c9.YEAR} ;;
}
}


view: MEAN_REAL_WAGES_COLA__b074c0ad_ad67_44c0_8b96_d62e3d86f7d2 {
sql_table_name:promethium.promethium.MEAN_REAL_WAGES_COLA ;;
dimension: SERIES_ID {
 sql: ${TABLE}.SERIES_ID;;
}
dimension: REGION_CODE {
 sql: ${TABLE}.REGION_CODE;;
}
measure: MEAN_REAL_WAGES_COLA {
type:count_distinct
 sql: ${TABLE}.MEAN_REAL_WAGES_COLA;;
}
dimension: YEAR {
 sql: ${TABLE}.YEAR;;
}
}


view: UNEMPLOYMENT_RATE__da2ff681_abf3_404e_a400_7c45953b4e27 {
sql_table_name:promethium.promethium.UNEMPLOYMENT_RATE ;;
dimension: SERIES_ID {
 sql: ${TABLE}.SERIES_ID;;
}
dimension: REGION_CODE {
 sql: ${TABLE}.REGION_CODE;;
}
measure: UNEMPLOYMENT_RATE {
type:count_distinct
 sql: ${TABLE}.UNEMPLOYMENT_RATE;;
}
dimension: YEAR {
 sql: ${TABLE}.YEAR;;
}
}


view: BACHELOR_DEGREE_OR_HIGHER__20f79434_c14b_471f_8a68_908c0d9c7332 {
sql_table_name:promethium.promethium.BACHELOR_DEGREE_OR_HIGHER ;;
dimension: SERIES_ID {
 sql: ${TABLE}.SERIES_ID;;
}
dimension: REGION_CODE {
 sql: ${TABLE}.REGION_CODE;;
}
measure: BACHELOR_DEGREE_OR_HIGHER {
type:count_distinct
 sql: ${TABLE}.BACHELOR_DEGREE_OR_HIGHER;;
}
dimension: YEAR {
 sql: ${TABLE}.YEAR;;
}
}


view: PER_CAPITA_PERSONAL_INCOME__74597efe_5664_4e92_b5db_ef54c09feca9 {
sql_table_name:promethium.promethium.PER_CAPITA_PERSONAL_INCOME ;;
dimension: SERIES_ID {
 sql: ${TABLE}.SERIES_ID;;
}
dimension: REGION_CODE {
 sql: ${TABLE}.REGION_CODE;;
}
measure: PER_CAPITA_PERSONAL_INCOME {
type:count_distinct
 sql: ${TABLE}.PER_CAPITA_PERSONAL_INCOME;;
}
dimension: YEAR {
 sql: ${TABLE}.YEAR;;
}
}


view: RESIDENT_POPULATION__e1c0787d_ffc8_41f8_8586_36ecc1648905 {
sql_table_name:promethium.promethium.RESIDENT_POPULATION ;;
dimension: SERIES_ID {
 sql: ${TABLE}.SERIES_ID;;
}
dimension: REGION_CODE {
 sql: ${TABLE}.REGION_CODE;;
}
measure: RESIDENT_POPULATION {
type:count_distinct
 sql: ${TABLE}.RESIDENT_POPULATION;;
}
dimension: YEAR {
 sql: ${TABLE}.YEAR;;
}
}


view: HOMEOWNERSHIP_RATE__783f2727_517b_45d5_a6c3_e0401b1806c9 {
sql_table_name:promethium.promethium.HOMEOWNERSHIP_RATE ;;
dimension: SERIES_ID {
 sql: ${TABLE}.SERIES_ID;;
}
dimension: REGION_CODE {
 sql: ${TABLE}.REGION_CODE;;
}
measure: HOMEOWNERSHIP_RATE {
type:count_distinct
 sql: ${TABLE}.HOMEOWNERSHIP_RATE;;
}
dimension: YEAR {
 sql: ${TABLE}.YEAR;;
}
}


view: PERSONAL_INCOME__bfd2fa22_0756_417a_89c3_2a57abbae774 {
sql_table_name:promethium.promethium.PERSONAL_INCOME ;;
dimension: SERIES_ID {
 sql: ${TABLE}.SERIES_ID;;
}
dimension: REGION_CODE {
 sql: ${TABLE}.REGION_CODE;;
}
measure: PERSONAL_INCOME {
type:count_distinct
 sql: ${TABLE}.PERSONAL_INCOME;;
}
dimension: YEAR {
 sql: ${TABLE}.YEAR;;
}
}


view: EST_MEDIAN_HOUSEHOLD_INCOME__354b8aa7_aef8_4c10_a6b3_56fa2aef9a20 {
sql_table_name:promethium.promethium.EST_MEDIAN_HOUSEHOLD_INCOME ;;
dimension: SERIES_ID {
 sql: ${TABLE}.SERIES_ID;;
}
dimension: REGION_CODE {
 sql: ${TABLE}.REGION_CODE;;
}
measure: EST_MEDIAN_HOUSEHOLD_INCOME {
type:count_distinct
 sql: ${TABLE}.EST_MEDIAN_HOUSEHOLD_INCOME;;
}
dimension: YEAR {
 sql: ${TABLE}.YEAR;;
}
}


view: US_REGIONS__58a52db7_56d3_4911_91ce_b311ea577c0f {
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