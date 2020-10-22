
connection:"presto-qa-1"


explore: ACCOUNT__2dc73fd8_7457_4caa_91bb_e28418b1eea3 {

join: COMMUNITY_MEDICAL_CENTERS__2ef43ea3_ac09_4abc_a518_31595e44314e {
 relationship: one_to_one
 sql_on: ${ACCOUNT__2dc73fd8_7457_4caa_91bb_e28418b1eea3.ACCOUNT_ID} = ${COMMUNITY_MEDICAL_CENTERS__2ef43ea3_ac09_4abc_a518_31595e44314e.MEDICAL_CENTER_ID} ;;
}
join: APPOINTMENTS_2__f50a0a1d_f4ae_4dad_b5f9_fdd171654cb6 {
 relationship: one_to_one
 sql_on: ${COMMUNITY_MEDICAL_CENTERS__2ef43ea3_ac09_4abc_a518_31595e44314e.MEDICAL_CENTER_ID} = ${APPOINTMENTS_2__f50a0a1d_f4ae_4dad_b5f9_fdd171654cb6.APPOINTMENT_ID} ;;
}
}


view: COMMUNITY_MEDICAL_CENTERS__2ef43ea3_ac09_4abc_a518_31595e44314e {
sql_table_name:promethium.promethium.COMMUNITY_MEDICAL_CENTERS ;;
dimension: MEDICAL_CENTER_ID {
 sql: ${TABLE}.MEDICAL_CENTER_ID;;
}
dimension: ADDRESS_ID {
 sql: ${TABLE}.ADDRESS_ID;;
}
dimension: MEDICAL_CENTER_NAME {
 sql: ${TABLE}.MEDICAL_CENTER_NAME;;
}
dimension: MEDICAL_CENTER_MANAGER {
 sql: ${TABLE}.MEDICAL_CENTER_MANAGER;;
}
dimension: CONTACT_DETAILS {
 sql: ${TABLE}.CONTACT_DETAILS;;
}
dimension: OTHER_DETAILS {
 sql: ${TABLE}.OTHER_DETAILS;;
}
}


view: APPOINTMENTS_2__f50a0a1d_f4ae_4dad_b5f9_fdd171654cb6 {
sql_table_name:promethium.promethium.APPOINTMENTS_2 ;;
dimension: APPOINTMENT_ID {
 sql: ${TABLE}.APPOINTMENT_ID;;
}
dimension: LOCATION_CODE {
 sql: ${TABLE}.LOCATION_CODE;;
}
dimension: PATIENT_ID {
 sql: ${TABLE}.PATIENT_ID;;
}
dimension: DATE_AND_TIME {
 sql: ${TABLE}.DATE_AND_TIME;;
}
dimension: MEDICAL_NOTES {
 sql: ${TABLE}.MEDICAL_NOTES;;
}
dimension: CARD_CENTRE_DETAILS {
 sql: ${TABLE}.CARD_CENTRE_DETAILS;;
}
dimension: COMMENT {
 sql: ${TABLE}.COMMENT;;
}
}


view: ACCOUNT__2dc73fd8_7457_4caa_91bb_e28418b1eea3 {
sql_table_name:snowflake.SCHEMA_INFO.ACCOUNT ;;
dimension: ACCOUNT_ID {
 sql: ${TABLE}.ACCOUNT_ID;;
}
dimension: ACCOUNT_NAME {
 sql: ${TABLE}.ACCOUNT_NAME;;
}
dimension: DATE_OPENED {
 sql: ${TABLE}.DATE_OPENED;;
}
dimension: DATE_CLOSED {
 sql: ${TABLE}.DATE_CLOSED;;
}
dimension: CAUTION_TEXT {
 sql: ${TABLE}.CAUTION_TEXT;;
}
}