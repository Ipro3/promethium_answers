
connection:"presto-qa-1"


explore: US_REGIONS__509aa194_ee01_4308_9998_df566b8991ac {

join: MEAN_REAL_WAGES_COLA__2ad361a0_019d_4e07_9d33_1557240b601b {
 relationship: one_to_one
 sql_on: ${US_REGIONS__509aa194_ee01_4308_9998_df566b8991ac.REGION_CODE} = ${MEAN_REAL_WAGES_COLA__2ad361a0_019d_4e07_9d33_1557240b601b.REGION_CODE} ;;
}
join: HOMEOWNERSHIP_RATE__445ed683_43b6_4d60_b912_156d0b3526b2 {
 relationship: one_to_one
 sql_on: ${US_REGIONS__509aa194_ee01_4308_9998_df566b8991ac.REGION_CODE} = ${HOMEOWNERSHIP_RATE__445ed683_43b6_4d60_b912_156d0b3526b2.REGION_CODE} ;;
}
join: UNEMPLOYMENT_RATE__2cc8eff3_983e_42fe_b6c8_6b93a32b7211 {
 relationship: one_to_one
 sql_on: ${US_REGIONS__509aa194_ee01_4308_9998_df566b8991ac.REGION_CODE} = ${UNEMPLOYMENT_RATE__2cc8eff3_983e_42fe_b6c8_6b93a32b7211.REGION_CODE} ;;
}
join: BACHELOR_DEGREE_OR_HIGHER__f3af56bf_db6a_40fc_83e8_83df9b31a955 {
 relationship: one_to_one
 sql_on: ${US_REGIONS__509aa194_ee01_4308_9998_df566b8991ac.REGION_CODE} = ${BACHELOR_DEGREE_OR_HIGHER__f3af56bf_db6a_40fc_83e8_83df9b31a955.REGION_CODE} ;;
}
join: PER_CAPITA_PERSONAL_INCOME__56f4cec0_3061_4cbc_8efd_002c1b2b1c71 {
 relationship: one_to_one
 sql_on: ${US_REGIONS__509aa194_ee01_4308_9998_df566b8991ac.REGION_CODE} = ${PER_CAPITA_PERSONAL_INCOME__56f4cec0_3061_4cbc_8efd_002c1b2b1c71.REGION_CODE} 
 and ${BACHELOR_DEGREE_OR_HIGHER__f3af56bf_db6a_40fc_83e8_83df9b31a955.YEAR} = ${PER_CAPITA_PERSONAL_INCOME__56f4cec0_3061_4cbc_8efd_002c1b2b1c71.YEAR} 
 and ${PER_CAPITA_PERSONAL_INCOME__56f4cec0_3061_4cbc_8efd_002c1b2b1c71.YEAR} = ${MEAN_REAL_WAGES_COLA__2ad361a0_019d_4e07_9d33_1557240b601b.YEAR} ;;
}
join: PERSONAL_INCOME__bee65034_d6ce_48fb_8e92_6f00e15f2731 {
 relationship: one_to_one
 sql_on: ${US_REGIONS__509aa194_ee01_4308_9998_df566b8991ac.REGION_CODE} = ${PERSONAL_INCOME__bee65034_d6ce_48fb_8e92_6f00e15f2731.REGION_CODE} 
 and ${UNEMPLOYMENT_RATE__2cc8eff3_983e_42fe_b6c8_6b93a32b7211.YEAR} = ${PERSONAL_INCOME__bee65034_d6ce_48fb_8e92_6f00e15f2731.YEAR} 
 and ${PERSONAL_INCOME__bee65034_d6ce_48fb_8e92_6f00e15f2731.YEAR} = ${BACHELOR_DEGREE_OR_HIGHER__f3af56bf_db6a_40fc_83e8_83df9b31a955.YEAR} ;;
}
join: RESIDENT_POPULATION__0b3420ee_0439_411e_a848_cf7e87b05dca {
 relationship: one_to_one
 sql_on: ${US_REGIONS__509aa194_ee01_4308_9998_df566b8991ac.REGION_CODE} = ${RESIDENT_POPULATION__0b3420ee_0439_411e_a848_cf7e87b05dca.REGION_CODE} 
 and ${HOMEOWNERSHIP_RATE__445ed683_43b6_4d60_b912_156d0b3526b2.YEAR} = ${RESIDENT_POPULATION__0b3420ee_0439_411e_a848_cf7e87b05dca.YEAR} 
 and ${RESIDENT_POPULATION__0b3420ee_0439_411e_a848_cf7e87b05dca.YEAR} = ${UNEMPLOYMENT_RATE__2cc8eff3_983e_42fe_b6c8_6b93a32b7211.YEAR} ;;
}
join: EST_MEDIAN_HOUSEHOLD_INCOME__08ee7465_20b5_45a8_8a67_5d9ce7c51eee {
 relationship: one_to_one
 sql_on: ${US_REGIONS__509aa194_ee01_4308_9998_df566b8991ac.REGION_CODE} = ${EST_MEDIAN_HOUSEHOLD_INCOME__08ee7465_20b5_45a8_8a67_5d9ce7c51eee.REGION_CODE} 
 and ${MEAN_REAL_WAGES_COLA__2ad361a0_019d_4e07_9d33_1557240b601b.YEAR} = ${EST_MEDIAN_HOUSEHOLD_INCOME__08ee7465_20b5_45a8_8a67_5d9ce7c51eee.YEAR} 
 and ${EST_MEDIAN_HOUSEHOLD_INCOME__08ee7465_20b5_45a8_8a67_5d9ce7c51eee.YEAR} = ${HOMEOWNERSHIP_RATE__445ed683_43b6_4d60_b912_156d0b3526b2.YEAR} ;;
}
}


view: HOMEOWNERSHIP_RATE__445ed683_43b6_4d60_b912_156d0b3526b2 {
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


view: EST_MEDIAN_HOUSEHOLD_INCOME__08ee7465_20b5_45a8_8a67_5d9ce7c51eee {
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


view: PER_CAPITA_PERSONAL_INCOME__56f4cec0_3061_4cbc_8efd_002c1b2b1c71 {
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


view: BACHELOR_DEGREE_OR_HIGHER__f3af56bf_db6a_40fc_83e8_83df9b31a955 {
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


view: RESIDENT_POPULATION__0b3420ee_0439_411e_a848_cf7e87b05dca {
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


view: MEAN_REAL_WAGES_COLA__2ad361a0_019d_4e07_9d33_1557240b601b {
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


view: US_REGIONS__509aa194_ee01_4308_9998_df566b8991ac {
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


view: UNEMPLOYMENT_RATE__2cc8eff3_983e_42fe_b6c8_6b93a32b7211 {
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


view: PERSONAL_INCOME__bee65034_d6ce_48fb_8e92_6f00e15f2731 {
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