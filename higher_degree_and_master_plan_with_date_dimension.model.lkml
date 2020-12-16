
connection:"presto-qa-1"


explore: MASTER_PLAN_TABLE_WDATES__eaa034f1_f80d_43fa_a3ee_605c30b122eb {

join: COMMUNITY__7c005891_0a8a_4fd8_9c74_ee35ff4316d7 {
 type: inner
 relationship: many_to_one
 sql_on: ${MASTER_PLAN_TABLE_WDATES__eaa034f1_f80d_43fa_a3ee_605c30b122eb.PLAN_NAME} = ${COMMUNITY__7c005891_0a8a_4fd8_9c74_ee35ff4316d7.LASTMODIFIEDBYID} ;;
}
join: HIGH_SCHOOL_GRADUATE_OR_HIGHER__4750a867_0651_47fd_a927_83fb2f9f1ef9 {
 type: inner
 relationship: many_to_one
 sql_on: ${MASTER_PLAN_TABLE_WDATES__eaa034f1_f80d_43fa_a3ee_605c30b122eb.PLAN_ID} = ${HIGH_SCHOOL_GRADUATE_OR_HIGHER__4750a867_0651_47fd_a927_83fb2f9f1ef9.REGION_CODE} ;;
}
join: BACHELOR_DEGREE_OR_HIGHER__bcbca36c_6e8e_4642_be57_febee1916479 {
 type: inner
 relationship: many_to_one
 sql_on: ${MASTER_PLAN_TABLE_WDATES__eaa034f1_f80d_43fa_a3ee_605c30b122eb.PACKAGE} = ${BACHELOR_DEGREE_OR_HIGHER__bcbca36c_6e8e_4642_be57_febee1916479.SERIES_ID} ;;
}
}


view: HIGH_SCHOOL_GRADUATE_OR_HIGHER__4750a867_0651_47fd_a927_83fb2f9f1ef9 {
sql_table_name:oracle.RDSOracleForPresto.HIGH_SCHOOL_GRADUATE_OR_HIGHER ;;
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


view: MASTER_PLAN_TABLE_WDATES__eaa034f1_f80d_43fa_a3ee_605c30b122eb {
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


view: COMMUNITY__7c005891_0a8a_4fd8_9c74_ee35ff4316d7 {
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


view: BACHELOR_DEGREE_OR_HIGHER__bcbca36c_6e8e_4642_be57_febee1916479 {
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