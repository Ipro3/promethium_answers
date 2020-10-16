
connection: "pmdevpresto"


explore: DIM_AGENT__bda1cdac_ab23_4854_b742_368c0b6a4c6c {

}


view: dim_agent__2d7f023d_dcda_4386_a71e_6f7e49d0fa0b {
sql_table_name:hivepublic.promethium.dim_agent ;;
dimension: agent_record_key {
 type: number
 sql: ${TABLE}.agent_record_key;;
}
dimension: agent_id {
 type: string
 sql: ${TABLE}.agent_id;;
}
dimension: csr_id {
 type: string
 sql: ${TABLE}.csr_id;;
}
dimension: agent_supervisor_record_key {
 type: number
 sql: ${TABLE}.agent_supervisor_record_key;;
}
dimension: agent_supervisor_csr_id {
 type: string
 sql: ${TABLE}.agent_supervisor_csr_id;;
}
dimension: agent_status {
 type: string
 sql: ${TABLE}.agent_status;;
}
dimension: agent_role_start_date {
 type: date
 sql: ${TABLE}.agent_role_start_date;;
}
dimension: agent_role_end_date {
 type: date
 sql: ${TABLE}.agent_role_end_date;;
}
dimension: agent_role_sms {
 type: string
 sql: ${TABLE}.agent_role_sms;;
}
dimension: agent_role_marketing {
 type: string
 sql: ${TABLE}.agent_role_marketing;;
}
dimension: agent_location {
 type: string
 sql: ${TABLE}.agent_location;;
}
dimension: agent_vendor {
 type: string
 sql: ${TABLE}.agent_vendor;;
}
dimension: agent_site {
 type: string
 sql: ${TABLE}.agent_site;;
}
dimension: agent_lob {
 type: string
 sql: ${TABLE}.agent_lob;;
}
dimension: activation_source {
 type: string
 sql: ${TABLE}.activation_source;;
}
dimension: current_record_flag {
 type: string
 sql: ${TABLE}.current_record_flag;;
}
dimension: deleted_record_flag {
 type: string
 sql: ${TABLE}.deleted_record_flag;;
}
}


view: DIM_AGENT__bda1cdac_ab23_4854_b742_368c0b6a4c6c {
sql_table_name:oracle.RDSORACLEFORPRESTO.DIM_AGENT ;;
dimension: AGENT_RECORD_KEY {
 type: string
 sql: ${TABLE}.AGENT_RECORD_KEY;;
}
dimension: AGENT_ID {
 type: string
 sql: ${TABLE}.AGENT_ID;;
}
dimension: CSR_ID {
 type: string
 sql: ${TABLE}.CSR_ID;;
}
dimension: AGENT_SUPERVISOR_RECORD_KEY {
 type: string
 sql: ${TABLE}.AGENT_SUPERVISOR_RECORD_KEY;;
}
dimension: AGENT_SUPERVISOR_CSR_ID {
 type: string
 sql: ${TABLE}.AGENT_SUPERVISOR_CSR_ID;;
}
dimension: AGENT_STATUS {
 type: string
 sql: ${TABLE}.AGENT_STATUS;;
}
dimension: AGENT_ROLE_START_DATE {
 type: string
 sql: ${TABLE}.AGENT_ROLE_START_DATE;;
}
dimension: AGENT_ROLE_END_DATE {
 type: string
 sql: ${TABLE}.AGENT_ROLE_END_DATE;;
}
dimension: AGENT_ROLE_SMS {
 type: string
 sql: ${TABLE}.AGENT_ROLE_SMS;;
}
dimension: AGENT_ROLE_MARKETING {
 type: string
 sql: ${TABLE}.AGENT_ROLE_MARKETING;;
}
dimension: AGENT_LOCATION {
 type: string
 sql: ${TABLE}.AGENT_LOCATION;;
}
dimension: AGENT_VENDOR {
 type: string
 sql: ${TABLE}.AGENT_VENDOR;;
}
dimension: AGENT_SITE {
 type: string
 sql: ${TABLE}.AGENT_SITE;;
}
dimension: AGENT_LOB {
 type: string
 sql: ${TABLE}.AGENT_LOB;;
}
dimension: ACTIVATION_SOURCE {
 type: string
 sql: ${TABLE}.ACTIVATION_SOURCE;;
}
dimension: CURRENT_RECORD_FLAG {
 type: string
 sql: ${TABLE}.CURRENT_RECORD_FLAG;;
}
dimension: DELETED_RECORD_FLAG {
 type: string
 sql: ${TABLE}.DELETED_RECORD_FLAG;;
}
}


view: dim_agent__169c7e0f_1527_4f2b_9ac4_9bd98557b8b9 {
sql_table_name:hive.tests3audit.dim_agent ;;
dimension: col0 {
 type: string
 sql: ${TABLE}.col0;;
}
dimension: col1 {
 type: string
 sql: ${TABLE}.col1;;
}
dimension: col2 {
 type: string
 sql: ${TABLE}.col2;;
}
dimension: col3 {
 type: string
 sql: ${TABLE}.col3;;
}
dimension: col4 {
 type: string
 sql: ${TABLE}.col4;;
}
dimension: col5 {
 type: string
 sql: ${TABLE}.col5;;
}
dimension: col6 {
 type: string
 sql: ${TABLE}.col6;;
}
dimension: col7 {
 type: string
 sql: ${TABLE}.col7;;
}
dimension: col8 {
 type: string
 sql: ${TABLE}.col8;;
}
dimension: col9 {
 type: string
 sql: ${TABLE}.col9;;
}
dimension: col10 {
 type: string
 sql: ${TABLE}.col10;;
}
dimension: col11 {
 type: string
 sql: ${TABLE}.col11;;
}
dimension: col12 {
 type: string
 sql: ${TABLE}.col12;;
}
dimension: col13 {
 type: string
 sql: ${TABLE}.col13;;
}
dimension: col14 {
 type: string
 sql: ${TABLE}.col14;;
}
dimension: col15 {
 type: string
 sql: ${TABLE}.col15;;
}
dimension: col16 {
 type: string
 sql: ${TABLE}.col16;;
}
dimension: col17 {
 type: string
 sql: ${TABLE}.col17;;
}
}