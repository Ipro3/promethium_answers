
connection:"presto-qa-1"


explore: ACCOUNT__de7cb62b_92d8_4ad4_9c18_61eb8b9f5988 {

join: COMMUNITY_MEDICAL_CENTERS__a894f123_9f94_4e32_8198_3a6022e570a3 {
 relationship: one_to_one
 sql_on: ${ACCOUNT__de7cb62b_92d8_4ad4_9c18_61eb8b9f5988.ACCOUNT_ID} = ${COMMUNITY_MEDICAL_CENTERS__a894f123_9f94_4e32_8198_3a6022e570a3.MEDICAL_CENTER_ID} ;;
}
}


view: APPOINTMENTS_2__93d5e888_8008_4484_8c9e_cd2a3a14df7a {
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


view: ACCOUNT__de7cb62b_92d8_4ad4_9c18_61eb8b9f5988 {
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


view: COMMUNITY_MEDICAL_CENTERS__a894f123_9f94_4e32_8198_3a6022e570a3 {
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