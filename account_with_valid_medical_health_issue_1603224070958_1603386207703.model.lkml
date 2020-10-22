
connection:"presto-qa-1"


explore: ACCOUNT__fdc77727_2808_472d_9023_88cda8a4e14f {

join: COMMUNITY_MEDICAL_CENTERS__f19ddb6a_b286_47b2_abfc_56da6d2a0a9c {
 relationship: one_to_one
 sql_on: ${ACCOUNT__fdc77727_2808_472d_9023_88cda8a4e14f.ACCOUNT_ID} = ${COMMUNITY_MEDICAL_CENTERS__f19ddb6a_b286_47b2_abfc_56da6d2a0a9c.MEDICAL_CENTER_ID} ;;
}
join: APPOINTMENTS_2__533aa4e9_7100_4889_b4bb_41edba24d848 {
 relationship: one_to_one
 sql_on: ${COMMUNITY_MEDICAL_CENTERS__f19ddb6a_b286_47b2_abfc_56da6d2a0a9c.MEDICAL_CENTER_ID} = ${APPOINTMENTS_2__533aa4e9_7100_4889_b4bb_41edba24d848.APPOINTMENT_ID} ;;
}
}


view: APPOINTMENTS_2__533aa4e9_7100_4889_b4bb_41edba24d848 {
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


view: ACCOUNT__fdc77727_2808_472d_9023_88cda8a4e14f {
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


view: COMMUNITY_MEDICAL_CENTERS__f19ddb6a_b286_47b2_abfc_56da6d2a0a9c {
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