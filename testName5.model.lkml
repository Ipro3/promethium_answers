
connection: "pmdevpresto"


explore: ACCOUNTCONTACTROLE__84ac3b78_9bf6_4d61_93f9_afb07d62ab09 {

join: ACCOUNT__1e554335_ec9d_475e_8618_eb225327a253 {
 relationship: one_to_one
 sql_on: ${null."sforce"."SFORCE"."ACCOUNT"."TYPE"} = ${null."sforce"."SFORCE"."ACCOUNTCONTACTROLE"."ROLE"} ;;
}
}


view: ACCOUNTCONTACTROLE__84ac3b78_9bf6_4d61_93f9_afb07d62ab09 {
sql_table_name:sforce.SFORCE.ACCOUNTCONTACTROLE ;;
dimension: ID {
 type: string
 sql: ${TABLE}.ID;;
}
dimension: ISDELETED {
 type: string
 sql: ${TABLE}.ISDELETED;;
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
dimension: ACCOUNTID {
 type: string
 sql: ${TABLE}.ACCOUNTID;;
}
dimension: CONTACTID {
 type: string
 sql: ${TABLE}.CONTACTID;;
}
dimension: ROLE {
 type: string
 sql: ${TABLE}.ROLE;;
}
dimension: ISPRIMARY {
 type: string
 sql: ${TABLE}.ISPRIMARY;;
}
}


view: ACCOUNT__1e554335_ec9d_475e_8618_eb225327a253 {
sql_table_name:sforce.SFORCE.ACCOUNT ;;
dimension: ID {
 type: string
 sql: ${TABLE}.ID;;
}
dimension: ISDELETED {
 type: string
 sql: ${TABLE}.ISDELETED;;
}
dimension: MASTERRECORDID {
 type: string
 sql: ${TABLE}.MASTERRECORDID;;
}
dimension: NAME {
 type: string
 sql: ${TABLE}.NAME;;
}
dimension: TYPE {
 type: string
 sql: ${TABLE}.TYPE;;
}
dimension: PARENTID {
 type: string
 sql: ${TABLE}.PARENTID;;
}
dimension: BILLINGSTREET {
 type: string
 sql: ${TABLE}.BILLINGSTREET;;
}
dimension: BILLINGCITY {
 type: string
 sql: ${TABLE}.BILLINGCITY;;
}
dimension: BILLINGSTATE {
 type: string
 sql: ${TABLE}.BILLINGSTATE;;
}
dimension: BILLINGPOSTALCODE {
 type: string
 sql: ${TABLE}.BILLINGPOSTALCODE;;
}
dimension: BILLINGCOUNTRY {
 type: string
 sql: ${TABLE}.BILLINGCOUNTRY;;
}
dimension: BILLINGLATITUDE {
 type: string
 sql: ${TABLE}.BILLINGLATITUDE;;
}
dimension: BILLINGLONGITUDE {
 type: string
 sql: ${TABLE}.BILLINGLONGITUDE;;
}
dimension: BILLINGGEOCODEACCURACY {
 type: string
 sql: ${TABLE}.BILLINGGEOCODEACCURACY;;
}
dimension: SHIPPINGSTREET {
 type: string
 sql: ${TABLE}.SHIPPINGSTREET;;
}
dimension: SHIPPINGCITY {
 type: string
 sql: ${TABLE}.SHIPPINGCITY;;
}
dimension: SHIPPINGSTATE {
 type: string
 sql: ${TABLE}.SHIPPINGSTATE;;
}
dimension: SHIPPINGPOSTALCODE {
 type: string
 sql: ${TABLE}.SHIPPINGPOSTALCODE;;
}
dimension: SHIPPINGCOUNTRY {
 type: string
 sql: ${TABLE}.SHIPPINGCOUNTRY;;
}
dimension: SHIPPINGLATITUDE {
 type: string
 sql: ${TABLE}.SHIPPINGLATITUDE;;
}
dimension: SHIPPINGLONGITUDE {
 type: string
 sql: ${TABLE}.SHIPPINGLONGITUDE;;
}
dimension: SHIPPINGGEOCODEACCURACY {
 type: string
 sql: ${TABLE}.SHIPPINGGEOCODEACCURACY;;
}
dimension: PHONE {
 type: string
 sql: ${TABLE}.PHONE;;
}
dimension: FAX {
 type: string
 sql: ${TABLE}.FAX;;
}
dimension: ACCOUNTNUMBER {
 type: string
 sql: ${TABLE}.ACCOUNTNUMBER;;
}
dimension: WEBSITE {
 type: string
 sql: ${TABLE}.WEBSITE;;
}
dimension: PHOTOURL {
 type: string
 sql: ${TABLE}.PHOTOURL;;
}
dimension: SIC {
 type: string
 sql: ${TABLE}.SIC;;
}
dimension: INDUSTRY {
 type: string
 sql: ${TABLE}.INDUSTRY;;
}
dimension: ANNUALREVENUE {
 type: string
 sql: ${TABLE}.ANNUALREVENUE;;
}
dimension: NUMBEROFEMPLOYEES {
 type: string
 sql: ${TABLE}.NUMBEROFEMPLOYEES;;
}
dimension: OWNERSHIP {
 type: string
 sql: ${TABLE}.OWNERSHIP;;
}
dimension: TICKERSYMBOL {
 type: string
 sql: ${TABLE}.TICKERSYMBOL;;
}
dimension: DESCRIPTION {
 type: string
 sql: ${TABLE}.DESCRIPTION;;
}
dimension: RATING {
 type: string
 sql: ${TABLE}.RATING;;
}
dimension: SITE {
 type: string
 sql: ${TABLE}.SITE;;
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
dimension: LASTVIEWEDDATE {
 type: string
 sql: ${TABLE}.LASTVIEWEDDATE;;
}
dimension: LASTREFERENCEDDATE {
 type: string
 sql: ${TABLE}.LASTREFERENCEDDATE;;
}
dimension: JIGSAW {
 type: string
 sql: ${TABLE}.JIGSAW;;
}
dimension: JIGSAWCOMPANYID {
 type: string
 sql: ${TABLE}.JIGSAWCOMPANYID;;
}
dimension: CLEANSTATUS {
 type: string
 sql: ${TABLE}.CLEANSTATUS;;
}
dimension: ACCOUNTSOURCE {
 type: string
 sql: ${TABLE}.ACCOUNTSOURCE;;
}
dimension: DUNSNUMBER {
 type: string
 sql: ${TABLE}.DUNSNUMBER;;
}
dimension: TRADESTYLE {
 type: string
 sql: ${TABLE}.TRADESTYLE;;
}
dimension: NAICSCODE {
 type: string
 sql: ${TABLE}.NAICSCODE;;
}
dimension: NAICSDESC {
 type: string
 sql: ${TABLE}.NAICSDESC;;
}
dimension: YEARSTARTED {
 type: string
 sql: ${TABLE}.YEARSTARTED;;
}
dimension: SICDESC {
 type: string
 sql: ${TABLE}.SICDESC;;
}
dimension: DANDBCOMPANYID {
 type: string
 sql: ${TABLE}.DANDBCOMPANYID;;
}
dimension: CUSTOMERPRIORITY__C {
 type: string
 sql: ${TABLE}.CUSTOMERPRIORITY__C;;
}
dimension: SLA__C {
 type: string
 sql: ${TABLE}.SLA__C;;
}
dimension: ACTIVE__C {
 type: string
 sql: ${TABLE}.ACTIVE__C;;
}
dimension: NUMBEROFLOCATIONS__C {
 type: string
 sql: ${TABLE}.NUMBEROFLOCATIONS__C;;
}
dimension: UPSELLOPPORTUNITY__C {
 type: string
 sql: ${TABLE}.UPSELLOPPORTUNITY__C;;
}
dimension: SLASERIALNUMBER__C {
 type: string
 sql: ${TABLE}.SLASERIALNUMBER__C;;
}
dimension: SLAEXPIRATIONDATE__C {
 type: string
 sql: ${TABLE}.SLAEXPIRATIONDATE__C;;
}
dimension: SEGMENT__C {
 type: string
 sql: ${TABLE}.SEGMENT__C;;
}
}