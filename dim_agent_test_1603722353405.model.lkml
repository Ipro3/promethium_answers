
connection:"pmdevpresto"


explore: dim_agent_bak__a1aa4014_67c5_48c1_b351_fb7d4b9ceef0 {

join: dim_agent__86f6a00f_c29c_434f_b536_513743c9a149 {
 type: inner
 relationship: many_to_one
 sql_on: ${dim_agent_bak__a1aa4014_67c5_48c1_b351_fb7d4b9ceef0.csr_id} >= ${dim_agent__86f6a00f_c29c_434f_b536_513743c9a149.col1} 
 and ${dim_agent__86f6a00f_c29c_434f_b536_513743c9a149.col12} > ${dim_agent_bak__a1aa4014_67c5_48c1_b351_fb7d4b9ceef0.agent_supervisor_csr_id} ;;
}
join: DIM_AGENT__10d70d16_62e9_45a8_acb7_fd6a5d198af1 {
 type: inner
 relationship: many_to_one
 sql_on: ${DIM_AGENT__10d70d16_62e9_45a8_acb7_fd6a5d198af1.AGENT_SUPERVISOR_CSR_ID} = ${dim_agent_bak__a1aa4014_67c5_48c1_b351_fb7d4b9ceef0.agent_first_name} ;;
}
}


view: dim_agent_bak__a1aa4014_67c5_48c1_b351_fb7d4b9ceef0 {
sql_table_name:hive.s3media.dim_agent_bak ;;
dimension: agent_record_key {
 sql: ${TABLE}.agent_record_key;;
}
dimension: agent_id {
 sql: ${TABLE}.agent_id;;
}
dimension: csr_id {
 sql: ${TABLE}.csr_id;;
}
dimension: agent_supervisor_record_key {
 sql: ${TABLE}.agent_supervisor_record_key;;
}
dimension: agent_supervisor_csr_id {
 sql: ${TABLE}.agent_supervisor_csr_id;;
}
dimension: agent_first_name {
 sql: ${TABLE}.agent_first_name;;
}
dimension: agent_last_name {
 sql: ${TABLE}.agent_last_name;;
}
dimension: agent_email_address {
 sql: ${TABLE}.agent_email_address;;
}
dimension: agent_status {
 sql: ${TABLE}.agent_status;;
}
dimension: agent_role_start_date {
 sql: ${TABLE}.agent_role_start_date;;
}
dimension: agent_role_end_date {
 sql: ${TABLE}.agent_role_end_date;;
}
dimension: agent_role_sms {
 sql: ${TABLE}.agent_role_sms;;
}
dimension: agent_role_marketing {
 sql: ${TABLE}.agent_role_marketing;;
}
dimension: agent_location {
 sql: ${TABLE}.agent_location;;
}
dimension: agent_vendor {
 sql: ${TABLE}.agent_vendor;;
}
dimension: agent_site {
 sql: ${TABLE}.agent_site;;
}
dimension: agent_lob {
 sql: ${TABLE}.agent_lob;;
}
dimension: activation_source {
 sql: ${TABLE}.activation_source;;
}
dimension: current_record_flag {
 sql: ${TABLE}.current_record_flag;;
}
dimension: deleted_record_flag {
 sql: ${TABLE}.deleted_record_flag;;
}
dimension: col20 {
 sql: ${TABLE}.col20;;
}
}


view: dim_agent__86f6a00f_c29c_434f_b536_513743c9a149 {
sql_table_name:hive.s3media.dim_agent ;;
dimension: col0 {
 sql: ${TABLE}.col0;;
}
dimension: col1 {
 sql: ${TABLE}.col1;;
}
dimension: col2 {
 sql: ${TABLE}.col2;;
}
dimension: col3 {
 sql: ${TABLE}.col3;;
}
dimension: col4 {
 sql: ${TABLE}.col4;;
}
dimension: col5 {
 sql: ${TABLE}.col5;;
}
dimension: col6 {
 sql: ${TABLE}.col6;;
}
dimension: col7 {
 sql: ${TABLE}.col7;;
}
dimension: col8 {
 sql: ${TABLE}.col8;;
}
dimension: col9 {
 sql: ${TABLE}.col9;;
}
dimension: col10 {
 sql: ${TABLE}.col10;;
}
dimension: col11 {
 sql: ${TABLE}.col11;;
}
dimension: col12 {
 sql: ${TABLE}.col12;;
}
dimension: col13 {
 sql: ${TABLE}.col13;;
}
dimension: col14 {
 sql: ${TABLE}.col14;;
}
dimension: col15 {
 sql: ${TABLE}.col15;;
}
dimension: col16 {
 sql: ${TABLE}.col16;;
}
dimension: col17 {
 sql: ${TABLE}.col17;;
}
}


view: DIM_AGENT__10d70d16_62e9_45a8_acb7_fd6a5d198af1 {
sql_table_name:pm61_snowflake.SCHEMA_INFO.DIM_AGENT ;;
dimension: AGENT_RECORD_KEY {
 sql: ${TABLE}.AGENT_RECORD_KEY;;
}
dimension: AGENT_ID {
 sql: ${TABLE}.AGENT_ID;;
}
dimension: CSR_ID {
 sql: ${TABLE}.CSR_ID;;
}
dimension: AGENT_SUPERVISOR_RECORD_KEY {
 sql: ${TABLE}.AGENT_SUPERVISOR_RECORD_KEY;;
}
dimension: AGENT_SUPERVISOR_CSR_ID {
 sql: ${TABLE}.AGENT_SUPERVISOR_CSR_ID;;
}
dimension: AGENT_STATUS {
 sql: ${TABLE}.AGENT_STATUS;;
}
dimension: AGENT_ROLE_START_DATE {
 sql: ${TABLE}.AGENT_ROLE_START_DATE;;
}
dimension: AGENT_ROLE_END_DATE {
 sql: ${TABLE}.AGENT_ROLE_END_DATE;;
}
dimension: AGENT_ROLE_SMS {
 sql: ${TABLE}.AGENT_ROLE_SMS;;
}
dimension: AGENT_ROLE_MARKETING {
 sql: ${TABLE}.AGENT_ROLE_MARKETING;;
}
dimension: AGENT_LOCATION {
 sql: ${TABLE}.AGENT_LOCATION;;
}
dimension: AGENT_VENDOR {
 sql: ${TABLE}.AGENT_VENDOR;;
}
dimension: AGENT_SITE {
 sql: ${TABLE}.AGENT_SITE;;
}
dimension: AGENT_LOB {
 sql: ${TABLE}.AGENT_LOB;;
}
dimension: ACTIVATION_SOURCE {
 sql: ${TABLE}.ACTIVATION_SOURCE;;
}
dimension: CURRENT_RECORD_FLAG {
 sql: ${TABLE}.CURRENT_RECORD_FLAG;;
}
dimension: DELETED_RECORD_FLAG {
 sql: ${TABLE}.DELETED_RECORD_FLAG;;
}
dimension: COLUMN17 {
 sql: ${TABLE}.COLUMN17;;
}
measure: AGENT_RECORD_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: AGENT_RECORD_KEY_sum {
type:sum
sql: ${AGENT_RECORD_KEY} ;;
 drill_fields: [detail*]
}
measure: AGENT_ID_count {
type:count
 drill_fields: [detail*]
}
measure: AGENT_ID_sum {
type:sum
sql: ${AGENT_ID} ;;
 drill_fields: [detail*]
}
measure: AGENT_SUPERVISOR_RECORD_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: AGENT_SUPERVISOR_RECORD_KEY_sum {
type:sum
sql: ${AGENT_SUPERVISOR_RECORD_KEY} ;;
 drill_fields: [detail*]
}
set: detail {
fields: [AGENT_RECORD_KEY, AGENT_ID, CSR_ID, AGENT_SUPERVISOR_RECORD_KEY, AGENT_SUPERVISOR_CSR_ID, AGENT_STATUS, AGENT_ROLE_START_DATE, AGENT_ROLE_END_DATE, AGENT_ROLE_SMS, AGENT_ROLE_MARKETING, AGENT_LOCATION, AGENT_VENDOR, AGENT_SITE, AGENT_LOB, ACTIVATION_SOURCE, CURRENT_RECORD_FLAG, DELETED_RECORD_FLAG, COLUMN17]
}
}