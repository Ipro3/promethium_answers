
connection: "pmdevpresto"


explore: OPPORTUNITY__b45d8270_58de_4ead_85d6_56df4f299606 {

join: ACCOUNTSHARE__0793847b_4700_49dd_b2bd_c54984dda4cc {
 relationship: one_to_one
 sql_on: ${OPPORTUNITY__b45d8270_58de_4ead_85d6_56df4f299606.RECORDTYPEID} <> ${ACCOUNTSHARE__0793847b_4700_49dd_b2bd_c54984dda4cc.USERORGROUPID} ;;
}
}


view: OPPORTUNITY__b45d8270_58de_4ead_85d6_56df4f299606 {
sql_table_name:snowflake5.SFORCE.OPPORTUNITY ;;
dimension: ID {
 type: string
 sql: ${TABLE}.ID;;
}
dimension: ISDELETED {
 type: string
 sql: ${TABLE}.ISDELETED;;
}
dimension: ACCOUNTID {
 type: string
 sql: ${TABLE}.ACCOUNTID;;
}
dimension: RECORDTYPEID {
 type: string
 sql: ${TABLE}.RECORDTYPEID;;
}
dimension: ISPRIVATE {
 type: string
 sql: ${TABLE}.ISPRIVATE;;
}
dimension: NAME {
 type: string
 sql: ${TABLE}.NAME;;
}
dimension: DESCRIPTION {
 type: string
 sql: ${TABLE}.DESCRIPTION;;
}
dimension: STAGENAME {
 type: string
 sql: ${TABLE}.STAGENAME;;
}
measure: AMOUNT {
 type: string
 sql: ${TABLE}.AMOUNT;;
}
measure: PROBABILITY {
 type: string
 sql: ${TABLE}.PROBABILITY;;
}
measure: EXPECTEDREVENUE {
 type: string
 sql: ${TABLE}.EXPECTEDREVENUE;;
}
measure: TOTALOPPORTUNITYQUANTITY {
 type: string
 sql: ${TABLE}.TOTALOPPORTUNITYQUANTITY;;
}
dimension: CLOSEDATE {
 type: string
 sql: ${TABLE}.CLOSEDATE;;
}
dimension: TYPE {
 type: string
 sql: ${TABLE}.TYPE;;
}
dimension: NEXTSTEP {
 type: string
 sql: ${TABLE}.NEXTSTEP;;
}
dimension: LEADSOURCE {
 type: string
 sql: ${TABLE}.LEADSOURCE;;
}
dimension: ISCLOSED {
 type: string
 sql: ${TABLE}.ISCLOSED;;
}
dimension: ISWON {
 type: string
 sql: ${TABLE}.ISWON;;
}
dimension: FORECASTCATEGORY {
 type: string
 sql: ${TABLE}.FORECASTCATEGORY;;
}
dimension: FORECASTCATEGORYNAME {
 type: string
 sql: ${TABLE}.FORECASTCATEGORYNAME;;
}
dimension: CAMPAIGNID {
 type: string
 sql: ${TABLE}.CAMPAIGNID;;
}
dimension: HASOPPORTUNITYLINEITEM {
 type: string
 sql: ${TABLE}.HASOPPORTUNITYLINEITEM;;
}
dimension: PRICEBOOK2ID {
 type: string
 sql: ${TABLE}.PRICEBOOK2ID;;
}
dimension: OWNERID {
 type: string
 sql: ${TABLE}.OWNERID;;
}
dimension: CREATEDDATE {
 type: string
 sql: ${TABLE}.CREATEDDATE;;
}
dimension: CREATEDBYID {
 type: string
 sql: ${TABLE}.CREATEDBYID;;
}
dimension: LASTMODIFIEDDATE {
 type: string
 sql: ${TABLE}.LASTMODIFIEDDATE;;
}
dimension: LASTMODIFIEDBYID {
 type: string
 sql: ${TABLE}.LASTMODIFIEDBYID;;
}
dimension: SYSTEMMODSTAMP {
 type: string
 sql: ${TABLE}.SYSTEMMODSTAMP;;
}
dimension: LASTACTIVITYDATE {
 type: string
 sql: ${TABLE}.LASTACTIVITYDATE;;
}
measure: FISCALQUARTER {
 type: string
 sql: ${TABLE}.FISCALQUARTER;;
}
measure: FISCALYEAR {
 type: string
 sql: ${TABLE}.FISCALYEAR;;
}
dimension: FISCAL {
 type: string
 sql: ${TABLE}.FISCAL;;
}
dimension: LASTVIEWEDDATE {
 type: string
 sql: ${TABLE}.LASTVIEWEDDATE;;
}
dimension: LASTREFERENCEDDATE {
 type: string
 sql: ${TABLE}.LASTREFERENCEDDATE;;
}
dimension: HASOPENACTIVITY {
 type: string
 sql: ${TABLE}.HASOPENACTIVITY;;
}
dimension: HASOVERDUETASK {
 type: string
 sql: ${TABLE}.HASOVERDUETASK;;
}
dimension: DELIVERYINSTALLATIONSTATUS__C {
 type: string
 sql: ${TABLE}.DELIVERYINSTALLATIONSTATUS__C;;
}
dimension: TRACKINGNUMBER__C {
 type: string
 sql: ${TABLE}.TRACKINGNUMBER__C;;
}
dimension: ORDERNUMBER__C {
 type: string
 sql: ${TABLE}.ORDERNUMBER__C;;
}
dimension: CURRENTGENERATORS__C {
 type: string
 sql: ${TABLE}.CURRENTGENERATORS__C;;
}
dimension: MAINCOMPETITORS__C {
 type: string
 sql: ${TABLE}.MAINCOMPETITORS__C;;
}
dimension: OPPORTUNITY_SOURCE__C {
 type: string
 sql: ${TABLE}.OPPORTUNITY_SOURCE__C;;
}
}


view: ACCOUNTSHARE__0793847b_4700_49dd_b2bd_c54984dda4cc {
sql_table_name:sforce_direct.SFORCE.ACCOUNTSHARE ;;
dimension: ID {
 type: string
 sql: ${TABLE}.ID;;
}
dimension: ACCOUNTID {
 type: string
 sql: ${TABLE}.ACCOUNTID;;
}
dimension: USERORGROUPID {
 type: string
 sql: ${TABLE}.USERORGROUPID;;
}
dimension: ACCOUNTACCESSLEVEL {
 type: string
 sql: ${TABLE}.ACCOUNTACCESSLEVEL;;
}
dimension: OPPORTUNITYACCESSLEVEL {
 type: string
 sql: ${TABLE}.OPPORTUNITYACCESSLEVEL;;
}
dimension: CASEACCESSLEVEL {
 type: string
 sql: ${TABLE}.CASEACCESSLEVEL;;
}
dimension: CONTACTACCESSLEVEL {
 type: string
 sql: ${TABLE}.CONTACTACCESSLEVEL;;
}
dimension: ROWCAUSE {
 type: string
 sql: ${TABLE}.ROWCAUSE;;
}
dimension: LASTMODIFIEDDATE {
 type: string
 sql: ${TABLE}.LASTMODIFIEDDATE;;
}
dimension: LASTMODIFIEDBYID {
 type: string
 sql: ${TABLE}.LASTMODIFIEDBYID;;
}
dimension: ISDELETED {
 type: string
 sql: ${TABLE}.ISDELETED;;
}
}