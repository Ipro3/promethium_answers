
connection:"pmdevpresto"


explore: ACCOUNT__50ef00b7_4ac2_45b6_8043_a8f63f3f49d8 {

join: COMMUNITY_MEDICAL_CENTERS__29d6ac6d_a609_4e3c_866f_f1de51c168d0 {
 relationship: one_to_one
 sql_on: ${ACCOUNT__50ef00b7_4ac2_45b6_8043_a8f63f3f49d8.ACCOUNT_ID} = ${COMMUNITY_MEDICAL_CENTERS__29d6ac6d_a609_4e3c_866f_f1de51c168d0.MEDICAL_CENTER_ID} ;;
}
join: APPOINTMENTS_2__6825b1a8_aeef_4d21_aada_826d09e69bd0 {
 relationship: one_to_one
 sql_on: ${COMMUNITY_MEDICAL_CENTERS__29d6ac6d_a609_4e3c_866f_f1de51c168d0.MEDICAL_CENTER_ID} = ${APPOINTMENTS_2__6825b1a8_aeef_4d21_aada_826d09e69bd0.APPOINTMENT_ID} ;;
}
}


view: APPOINTMENTS_2__6825b1a8_aeef_4d21_aada_826d09e69bd0 {
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


view: ACCOUNT__50ef00b7_4ac2_45b6_8043_a8f63f3f49d8 {
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


view: COMMUNITY_MEDICAL_CENTERS__29d6ac6d_a609_4e3c_866f_f1de51c168d0 {
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