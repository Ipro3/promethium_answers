
connection:"presto-qa-1"


explore: MASTER_PLAN_TABLE_WDATES__38a16f7e_cd74_44d5_bb1c_4d870ef15125 {

join: COMMUNITY__10bf79b0_98c2_4d3c_881d_90a9bdeb4e54 {
 type: inner
 relationship: many_to_one
 sql_on: ${MASTER_PLAN_TABLE_WDATES__38a16f7e_cd74_44d5_bb1c_4d870ef15125.PLAN_NAME} = ${COMMUNITY__10bf79b0_98c2_4d3c_881d_90a9bdeb4e54.LASTMODIFIEDBYID} ;;
}
join: BACHELOR_DEGREE_OR_HIGHER__c0eeb590_e6e1_46f5_a014_0c7ec795a39d {
 type: inner
 relationship: many_to_one
 sql_on: ${MASTER_PLAN_TABLE_WDATES__38a16f7e_cd74_44d5_bb1c_4d870ef15125.PACKAGE} = ${BACHELOR_DEGREE_OR_HIGHER__c0eeb590_e6e1_46f5_a014_0c7ec795a39d.SERIES_ID} ;;
}
}


view: BACHELOR_DEGREE_OR_HIGHER__c0eeb590_e6e1_46f5_a014_0c7ec795a39d {
sql_table_name:oracle.RDSOracleForPresto.BACHELOR_DEGREE_OR_HIGHER ;;
  dimension: primary_key {
  primary_key: yes
  sql: CONCAT(${TABLE}.SERIES_ID, ${TABLE}.YEAR) ;;
}
dimension: SERIES_ID {
  sql: ${TABLE}.SERIES_ID;;
}
dimension: REGION_CODE {
  sql: ${TABLE}.REGION_CODE;;
}
dimension: SERIES_VALUE {
  sql: ${TABLE}.SERIES_VALUE;;
}
dimension: YEAR {
  sql: ${TABLE}.YEAR;;
}
measure: REGION_CODE_sum {
type:sum
sql: ${REGION_CODE} ;;
 drill_fields: [detail*]
}
measure: SERIES_VALUE_sum {
type:sum
sql: ${SERIES_VALUE} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [SERIES_ID, REGION_CODE, SERIES_VALUE, YEAR]
}
}


view: COMMUNITY__10bf79b0_98c2_4d3c_881d_90a9bdeb4e54 {
sql_table_name:sforce.SFORCE.COMMUNITY ;;
dimension: ID {
  sql: ${TABLE}.ID;;
}
dimension: SYSTEMMODSTAMP {
  sql: ${TABLE}.SYSTEMMODSTAMP;;
}
dimension: CREATEDDATE {
  sql: ${TABLE}.CREATEDDATE;;
}
dimension: CREATEDBYID {
  sql: ${TABLE}.CREATEDBYID;;
}
dimension: LASTMODIFIEDDATE {
  sql: ${TABLE}.LASTMODIFIEDDATE;;
}
dimension: LASTMODIFIEDBYID {
  sql: ${TABLE}.LASTMODIFIEDBYID;;
}
dimension: NAME {
  sql: ${TABLE}.NAME;;
}
dimension: DESCRIPTION {
  sql: ${TABLE}.DESCRIPTION;;
}
dimension: ISACTIVE {
  sql: ${TABLE}.ISACTIVE;;
}
dimension: ISPUBLISHED {
  sql: ${TABLE}.ISPUBLISHED;;
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [ID, SYSTEMMODSTAMP, CREATEDDATE, CREATEDBYID, LASTMODIFIEDDATE, LASTMODIFIEDBYID, NAME, DESCRIPTION, ISACTIVE, ISPUBLISHED]
}
}


view: MASTER_PLAN_TABLE_WDATES__38a16f7e_cd74_44d5_bb1c_4d870ef15125 {
sql_table_name:snowflake.SCHEMA_INFO.MASTER_PLAN_TABLE_WDATES ;;
dimension: PLAN_ID {
  sql: ${TABLE}.PLAN_ID;;
}
dimension: PLAN_NAME {
  sql: ${TABLE}.PLAN_NAME;;
}
dimension: MER {
  sql: ${TABLE}.MER;;
}
dimension: DISC {
  sql: ${TABLE}.DISC;;
}
dimension: PACKAGE {
  sql: ${TABLE}.PACKAGE;;
}
dimension: LEN {
  sql: ${TABLE}.LEN;;
}
dimension: ROLLUP1 {
  sql: ${TABLE}.ROLLUP1;;
}
dimension: ASP {
  sql: ${TABLE}.ASP;;
}
dimension: STARTDATE {
  sql: ${TABLE}.STARTDATE;;
}
dimension: ENDDATE {
  sql: ${TABLE}.ENDDATE;;
}
measure: PLAN_ID_sum {
type:sum
sql: ${PLAN_ID} ;;
 drill_fields: [detail*]
}
measure: MER_sum {
type:sum
sql: ${MER} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [PLAN_ID, PLAN_NAME, MER, DISC, PACKAGE, LEN, ROLLUP1, ASP, STARTDATE, ENDDATE]
}
}