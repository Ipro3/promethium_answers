
connection:"presto-qa-1"


explore: ACCOUNT__81ab8494_a3fb_46cd_bf9f_bcff0b9722a2 {

join: AUTHSESSION__d0ea5613_94e1_4471_8b91_3fa8d4f0f7e7 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${ACCOUNT__81ab8494_a3fb_46cd_bf9f_bcff0b9722a2.MASTERRECORDID} > ${AUTHSESSION__d0ea5613_94e1_4471_8b91_3fa8d4f0f7e7.USERSID} ;;
}
}


view: ACCOUNT__81ab8494_a3fb_46cd_bf9f_bcff0b9722a2 {
sql_table_name:sforce.SFORCE.ACCOUNT ;;
dimension: ID {
 sql: ${TABLE}.ID;;
}
dimension: ISDELETED {
 sql: ${TABLE}.ISDELETED;;
}
dimension: MASTERRECORDID {
 sql: ${TABLE}.MASTERRECORDID;;
}
dimension: NAME {
 sql: ${TABLE}.NAME;;
}
dimension: TYPE {
 sql: ${TABLE}.TYPE;;
}
dimension: PARENTID {
 sql: ${TABLE}.PARENTID;;
}
dimension: BILLINGSTREET {
 sql: ${TABLE}.BILLINGSTREET;;
}
dimension: BILLINGCITY {
 sql: ${TABLE}.BILLINGCITY;;
}
dimension: BILLINGSTATE {
 sql: ${TABLE}.BILLINGSTATE;;
}
dimension: BILLINGPOSTALCODE {
 sql: ${TABLE}.BILLINGPOSTALCODE;;
}
dimension: BILLINGCOUNTRY {
 sql: ${TABLE}.BILLINGCOUNTRY;;
}
dimension: BILLINGLATITUDE {
 sql: ${TABLE}.BILLINGLATITUDE;;
}
dimension: BILLINGLONGITUDE {
 sql: ${TABLE}.BILLINGLONGITUDE;;
}
dimension: BILLINGGEOCODEACCURACY {
 sql: ${TABLE}.BILLINGGEOCODEACCURACY;;
}
dimension: SHIPPINGSTREET {
 sql: ${TABLE}.SHIPPINGSTREET;;
}
dimension: SHIPPINGCITY {
 sql: ${TABLE}.SHIPPINGCITY;;
}
dimension: SHIPPINGSTATE {
 sql: ${TABLE}.SHIPPINGSTATE;;
}
dimension: SHIPPINGPOSTALCODE {
 sql: ${TABLE}.SHIPPINGPOSTALCODE;;
}
dimension: SHIPPINGCOUNTRY {
 sql: ${TABLE}.SHIPPINGCOUNTRY;;
}
dimension: SHIPPINGLATITUDE {
 sql: ${TABLE}.SHIPPINGLATITUDE;;
}
dimension: SHIPPINGLONGITUDE {
 sql: ${TABLE}.SHIPPINGLONGITUDE;;
}
dimension: SHIPPINGGEOCODEACCURACY {
 sql: ${TABLE}.SHIPPINGGEOCODEACCURACY;;
}
dimension: PHONE {
 sql: ${TABLE}.PHONE;;
}
dimension: FAX {
 sql: ${TABLE}.FAX;;
}
dimension: ACCOUNTNUMBER {
 sql: ${TABLE}.ACCOUNTNUMBER;;
}
dimension: WEBSITE {
 sql: ${TABLE}.WEBSITE;;
}
dimension: PHOTOURL {
 sql: ${TABLE}.PHOTOURL;;
}
dimension: SIC {
 sql: ${TABLE}.SIC;;
}
dimension: INDUSTRY {
 sql: ${TABLE}.INDUSTRY;;
}
dimension: ANNUALREVENUE {
 sql: ${TABLE}.ANNUALREVENUE;;
}
dimension: NUMBEROFEMPLOYEES {
 sql: ${TABLE}.NUMBEROFEMPLOYEES;;
}
dimension: OWNERSHIP {
 sql: ${TABLE}.OWNERSHIP;;
}
dimension: TICKERSYMBOL {
 sql: ${TABLE}.TICKERSYMBOL;;
}
dimension: DESCRIPTION {
 sql: ${TABLE}.DESCRIPTION;;
}
dimension: RATING {
 sql: ${TABLE}.RATING;;
}
dimension: SITE {
 sql: ${TABLE}.SITE;;
}
dimension: OWNERID {
 sql: ${TABLE}.OWNERID;;
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
dimension: SYSTEMMODSTAMP {
 sql: ${TABLE}.SYSTEMMODSTAMP;;
}
dimension: LASTACTIVITYDATE {
 sql: ${TABLE}.LASTACTIVITYDATE;;
}
dimension: LASTVIEWEDDATE {
 sql: ${TABLE}.LASTVIEWEDDATE;;
}
dimension: LASTREFERENCEDDATE {
 sql: ${TABLE}.LASTREFERENCEDDATE;;
}
dimension: JIGSAW {
 sql: ${TABLE}.JIGSAW;;
}
dimension: JIGSAWCOMPANYID {
 sql: ${TABLE}.JIGSAWCOMPANYID;;
}
dimension: CLEANSTATUS {
 sql: ${TABLE}.CLEANSTATUS;;
}
dimension: ACCOUNTSOURCE {
 sql: ${TABLE}.ACCOUNTSOURCE;;
}
dimension: DUNSNUMBER {
 sql: ${TABLE}.DUNSNUMBER;;
}
dimension: TRADESTYLE {
 sql: ${TABLE}.TRADESTYLE;;
}
dimension: NAICSCODE {
 sql: ${TABLE}.NAICSCODE;;
}
dimension: NAICSDESC {
 sql: ${TABLE}.NAICSDESC;;
}
dimension: YEARSTARTED {
 sql: ${TABLE}.YEARSTARTED;;
}
dimension: SICDESC {
 sql: ${TABLE}.SICDESC;;
}
dimension: DANDBCOMPANYID {
 sql: ${TABLE}.DANDBCOMPANYID;;
}
dimension: CUSTOMERPRIORITY__C {
 sql: ${TABLE}.CUSTOMERPRIORITY__C;;
}
dimension: SLA__C {
 sql: ${TABLE}.SLA__C;;
}
dimension: ACTIVE__C {
 sql: ${TABLE}.ACTIVE__C;;
}
dimension: NUMBEROFLOCATIONS__C {
 sql: ${TABLE}.NUMBEROFLOCATIONS__C;;
}
dimension: UPSELLOPPORTUNITY__C {
 sql: ${TABLE}.UPSELLOPPORTUNITY__C;;
}
dimension: SLASERIALNUMBER__C {
 sql: ${TABLE}.SLASERIALNUMBER__C;;
}
dimension: SLAEXPIRATIONDATE__C {
 sql: ${TABLE}.SLAEXPIRATIONDATE__C;;
}
dimension: SEGMENT__C {
 sql: ${TABLE}.SEGMENT__C;;
}
measure: BILLINGLATITUDE_count {
type:count
 drill_fields: [detail*]
}
measure: BILLINGLATITUDE_sum {
type:sum
sql: ${BILLINGLATITUDE} ;;
 drill_fields: [detail*]
}
measure: BILLINGLONGITUDE_count {
type:count
 drill_fields: [detail*]
}
measure: BILLINGLONGITUDE_sum {
type:sum
sql: ${BILLINGLONGITUDE} ;;
 drill_fields: [detail*]
}
measure: SHIPPINGLATITUDE_count {
type:count
 drill_fields: [detail*]
}
measure: SHIPPINGLATITUDE_sum {
type:sum
sql: ${SHIPPINGLATITUDE} ;;
 drill_fields: [detail*]
}
measure: SHIPPINGLONGITUDE_count {
type:count
 drill_fields: [detail*]
}
measure: SHIPPINGLONGITUDE_sum {
type:sum
sql: ${SHIPPINGLONGITUDE} ;;
 drill_fields: [detail*]
}
measure: ANNUALREVENUE_count {
type:count
 drill_fields: [detail*]
}
measure: ANNUALREVENUE_sum {
type:sum
sql: ${ANNUALREVENUE} ;;
 drill_fields: [detail*]
}
measure: NUMBEROFEMPLOYEES_count {
type:count
 drill_fields: [detail*]
}
measure: NUMBEROFEMPLOYEES_sum {
type:sum
sql: ${NUMBEROFEMPLOYEES} ;;
 drill_fields: [detail*]
}
measure: NUMBEROFLOCATIONS__C_count {
type:count
 drill_fields: [detail*]
}
measure: NUMBEROFLOCATIONS__C_sum {
type:sum
sql: ${NUMBEROFLOCATIONS__C} ;;
 drill_fields: [detail*]
}
set: detail {
fields: [ID, MASTERRECORDID, NAME, TYPE, PARENTID, BILLINGSTREET, BILLINGCITY, BILLINGSTATE, BILLINGPOSTALCODE, BILLINGCOUNTRY, BILLINGLATITUDE, BILLINGLONGITUDE, BILLINGGEOCODEACCURACY, SHIPPINGSTREET, SHIPPINGCITY, SHIPPINGSTATE, SHIPPINGPOSTALCODE, SHIPPINGCOUNTRY, SHIPPINGLATITUDE, SHIPPINGLONGITUDE, SHIPPINGGEOCODEACCURACY, PHONE, FAX, ACCOUNTNUMBER, WEBSITE, PHOTOURL, SIC, INDUSTRY, ANNUALREVENUE, NUMBEROFEMPLOYEES, OWNERSHIP, TICKERSYMBOL, DESCRIPTION, RATING, SITE, OWNERID, CREATEDBYID, LASTMODIFIEDBYID, JIGSAW, JIGSAWCOMPANYID, CLEANSTATUS, ACCOUNTSOURCE, DUNSNUMBER, TRADESTYLE, NAICSCODE, NAICSDESC, YEARSTARTED, SICDESC, DANDBCOMPANYID, CUSTOMERPRIORITY__C, SLA__C, ACTIVE__C, NUMBEROFLOCATIONS__C, UPSELLOPPORTUNITY__C, SLASERIALNUMBER__C, SEGMENT__C]
}
}


view: AUTHSESSION__d0ea5613_94e1_4471_8b91_3fa8d4f0f7e7 {
sql_table_name:sforce.SFORCE.AUTHSESSION ;;
dimension: ID {
 sql: ${TABLE}.ID;;
}
dimension: USERSID {
 sql: ${TABLE}.USERSID;;
}
dimension: CREATEDDATE {
 sql: ${TABLE}.CREATEDDATE;;
}
dimension: LASTMODIFIEDDATE {
 sql: ${TABLE}.LASTMODIFIEDDATE;;
}
dimension: NUMSECONDSVALID {
 sql: ${TABLE}.NUMSECONDSVALID;;
}
dimension: USERTYPE {
 sql: ${TABLE}.USERTYPE;;
}
dimension: SOURCEIP {
 sql: ${TABLE}.SOURCEIP;;
}
dimension: LOGINTYPE {
 sql: ${TABLE}.LOGINTYPE;;
}
dimension: SESSIONTYPE {
 sql: ${TABLE}.SESSIONTYPE;;
}
dimension: SESSIONSECURITYLEVEL {
 sql: ${TABLE}.SESSIONSECURITYLEVEL;;
}
dimension: LOGOUTURL {
 sql: ${TABLE}.LOGOUTURL;;
}
dimension: PARENTID {
 sql: ${TABLE}.PARENTID;;
}
dimension: LOGINHISTORYID {
 sql: ${TABLE}.LOGINHISTORYID;;
}
dimension: LOGINGEOID {
 sql: ${TABLE}.LOGINGEOID;;
}
dimension: ISCURRENT {
 sql: ${TABLE}.ISCURRENT;;
}
measure: NUMSECONDSVALID_count {
type:count
 drill_fields: [detail*]
}
measure: NUMSECONDSVALID_sum {
type:sum
sql: ${NUMSECONDSVALID} ;;
 drill_fields: [detail*]
}
set: detail {
fields: [ID, USERSID, NUMSECONDSVALID, USERTYPE, SOURCEIP, LOGINTYPE, SESSIONTYPE, SESSIONSECURITYLEVEL, LOGOUTURL, PARENTID, LOGINHISTORYID, LOGINGEOID]
}
}