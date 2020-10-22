
connection:"presto-qa-1"


explore: ACCOUNT__6dedbc8f_311c_4178_a6e9_f1a588469e74 {

join: CONTRACT__33e64099_f849_42e2_bba8_bb8ea9f93659 {
 relationship: one_to_one
 sql_on: ${ACCOUNT__6dedbc8f_311c_4178_a6e9_f1a588469e74.ID} = ${CONTRACT__33e64099_f849_42e2_bba8_bb8ea9f93659.ID} ;;
}
join: CONTRACT__1efc5524_5a00_4457_bff0_1bf46be9702a {
 relationship: one_to_one
 sql_on: ${ACCOUNT__6dedbc8f_311c_4178_a6e9_f1a588469e74.ID} = ${CONTRACT__1efc5524_5a00_4457_bff0_1bf46be9702a.ACCOUNTID} ;;
}
join: EVENT__426ae08c_b01a_4c9f_9262_d900b460d287 {
 relationship: one_to_one
 sql_on: ${CONTRACT__33e64099_f849_42e2_bba8_bb8ea9f93659.ID} = ${EVENT__426ae08c_b01a_4c9f_9262_d900b460d287.WHATID} ;;
}
}


view: EVENT__426ae08c_b01a_4c9f_9262_d900b460d287 {
sql_table_name:sforce.SFORCE.EVENT ;;
dimension: ID {
 sql: ${TABLE}.ID;;
}
dimension: WHOID {
 sql: ${TABLE}.WHOID;;
}
dimension: WHATID {
 sql: ${TABLE}.WHATID;;
}
dimension: SUBJECT {
 sql: ${TABLE}.SUBJECT;;
}
dimension: LOCATION {
 sql: ${TABLE}.LOCATION;;
}
dimension: ISALLDAYEVENT {
 sql: ${TABLE}.ISALLDAYEVENT;;
}
dimension: ACTIVITYDATETIME {
 sql: ${TABLE}.ACTIVITYDATETIME;;
}
dimension: ACTIVITYDATE {
 sql: ${TABLE}.ACTIVITYDATE;;
}
measure: DURATIONINMINUTES {
type:count_distinct
 sql: ${TABLE}.DURATIONINMINUTES;;
}
dimension: STARTDATETIME {
 sql: ${TABLE}.STARTDATETIME;;
}
dimension: ENDDATETIME {
 sql: ${TABLE}.ENDDATETIME;;
}
dimension: DESCRIPTION {
 sql: ${TABLE}.DESCRIPTION;;
}
dimension: ACCOUNTID {
 sql: ${TABLE}.ACCOUNTID;;
}
dimension: OWNERID {
 sql: ${TABLE}.OWNERID;;
}
dimension: ISPRIVATE {
 sql: ${TABLE}.ISPRIVATE;;
}
dimension: SHOWAS {
 sql: ${TABLE}.SHOWAS;;
}
dimension: ISDELETED {
 sql: ${TABLE}.ISDELETED;;
}
dimension: ISCHILD {
 sql: ${TABLE}.ISCHILD;;
}
dimension: ISGROUPEVENT {
 sql: ${TABLE}.ISGROUPEVENT;;
}
dimension: GROUPEVENTTYPE {
 sql: ${TABLE}.GROUPEVENTTYPE;;
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
dimension: ISARCHIVED {
 sql: ${TABLE}.ISARCHIVED;;
}
dimension: RECURRENCEACTIVITYID {
 sql: ${TABLE}.RECURRENCEACTIVITYID;;
}
dimension: ISRECURRENCE {
 sql: ${TABLE}.ISRECURRENCE;;
}
dimension: RECURRENCESTARTDATETIME {
 sql: ${TABLE}.RECURRENCESTARTDATETIME;;
}
dimension: RECURRENCEENDDATEONLY {
 sql: ${TABLE}.RECURRENCEENDDATEONLY;;
}
dimension: RECURRENCETIMEZONESIDKEY {
 sql: ${TABLE}.RECURRENCETIMEZONESIDKEY;;
}
dimension: RECURRENCETYPE {
 sql: ${TABLE}.RECURRENCETYPE;;
}
measure: RECURRENCEINTERVAL {
type:count_distinct
 sql: ${TABLE}.RECURRENCEINTERVAL;;
}
measure: RECURRENCEDAYOFWEEKMASK {
type:count_distinct
 sql: ${TABLE}.RECURRENCEDAYOFWEEKMASK;;
}
measure: RECURRENCEDAYOFMONTH {
type:count_distinct
 sql: ${TABLE}.RECURRENCEDAYOFMONTH;;
}
dimension: RECURRENCEINSTANCE {
 sql: ${TABLE}.RECURRENCEINSTANCE;;
}
dimension: RECURRENCEMONTHOFYEAR {
 sql: ${TABLE}.RECURRENCEMONTHOFYEAR;;
}
dimension: REMINDERDATETIME {
 sql: ${TABLE}.REMINDERDATETIME;;
}
dimension: ISREMINDERSET {
 sql: ${TABLE}.ISREMINDERSET;;
}
dimension: EVENTSUBTYPE {
 sql: ${TABLE}.EVENTSUBTYPE;;
}
dimension: ISRECURRENCE2EXCLUSION {
 sql: ${TABLE}.ISRECURRENCE2EXCLUSION;;
}
dimension: RECURRENCE2PATTERNTEXT {
 sql: ${TABLE}.RECURRENCE2PATTERNTEXT;;
}
dimension: RECURRENCE2PATTERNVERSION {
 sql: ${TABLE}.RECURRENCE2PATTERNVERSION;;
}
dimension: ISRECURRENCE2 {
 sql: ${TABLE}.ISRECURRENCE2;;
}
dimension: ISRECURRENCE2EXCEPTION {
 sql: ${TABLE}.ISRECURRENCE2EXCEPTION;;
}
dimension: RECURRENCE2PATTERNSTARTDATE {
 sql: ${TABLE}.RECURRENCE2PATTERNSTARTDATE;;
}
dimension: RECURRENCE2PATTERNTIMEZONE {
 sql: ${TABLE}.RECURRENCE2PATTERNTIMEZONE;;
}
}


view: CONTRACT__33e64099_f849_42e2_bba8_bb8ea9f93659 {
sql_table_name:sforce.SFORCE.CONTRACT ;;
dimension: ID {
 sql: ${TABLE}.ID;;
}
dimension: ACCOUNTID {
 sql: ${TABLE}.ACCOUNTID;;
}
dimension: PRICEBOOK2ID {
 sql: ${TABLE}.PRICEBOOK2ID;;
}
dimension: OWNEREXPIRATIONNOTICE {
 sql: ${TABLE}.OWNEREXPIRATIONNOTICE;;
}
dimension: STARTDATE {
 sql: ${TABLE}.STARTDATE;;
}
dimension: ENDDATE {
 sql: ${TABLE}.ENDDATE;;
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
measure: BILLINGLATITUDE {
type:count_distinct
 sql: ${TABLE}.BILLINGLATITUDE;;
}
measure: BILLINGLONGITUDE {
type:count_distinct
 sql: ${TABLE}.BILLINGLONGITUDE;;
}
dimension: BILLINGGEOCODEACCURACY {
 sql: ${TABLE}.BILLINGGEOCODEACCURACY;;
}
measure: CONTRACTTERM {
type:count_distinct
 sql: ${TABLE}.CONTRACTTERM;;
}
dimension: OWNERID {
 sql: ${TABLE}.OWNERID;;
}
dimension: STATUS {
 sql: ${TABLE}.STATUS;;
}
dimension: COMPANYSIGNEDID {
 sql: ${TABLE}.COMPANYSIGNEDID;;
}
dimension: COMPANYSIGNEDDATE {
 sql: ${TABLE}.COMPANYSIGNEDDATE;;
}
dimension: CUSTOMERSIGNEDID {
 sql: ${TABLE}.CUSTOMERSIGNEDID;;
}
dimension: CUSTOMERSIGNEDTITLE {
 sql: ${TABLE}.CUSTOMERSIGNEDTITLE;;
}
dimension: CUSTOMERSIGNEDDATE {
 sql: ${TABLE}.CUSTOMERSIGNEDDATE;;
}
dimension: SPECIALTERMS {
 sql: ${TABLE}.SPECIALTERMS;;
}
dimension: ACTIVATEDBYID {
 sql: ${TABLE}.ACTIVATEDBYID;;
}
dimension: ACTIVATEDDATE {
 sql: ${TABLE}.ACTIVATEDDATE;;
}
dimension: STATUSCODE {
 sql: ${TABLE}.STATUSCODE;;
}
dimension: DESCRIPTION {
 sql: ${TABLE}.DESCRIPTION;;
}
dimension: ISDELETED {
 sql: ${TABLE}.ISDELETED;;
}
dimension: CONTRACTNUMBER {
 sql: ${TABLE}.CONTRACTNUMBER;;
}
dimension: LASTAPPROVEDDATE {
 sql: ${TABLE}.LASTAPPROVEDDATE;;
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
}


view: ACCOUNT__6dedbc8f_311c_4178_a6e9_f1a588469e74 {
sql_table_name:sforce2.SFORCE.ACCOUNT ;;
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
measure: BILLINGLATITUDE {
type:count_distinct
 sql: ${TABLE}.BILLINGLATITUDE;;
}
measure: BILLINGLONGITUDE {
type:count_distinct
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
measure: SHIPPINGLATITUDE {
type:count_distinct
 sql: ${TABLE}.SHIPPINGLATITUDE;;
}
measure: SHIPPINGLONGITUDE {
type:count_distinct
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
measure: ANNUALREVENUE {
type:count_distinct
 sql: ${TABLE}.ANNUALREVENUE;;
}
measure: NUMBEROFEMPLOYEES {
type:count_distinct
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
measure: NUMBEROFLOCATIONS__C {
type:count_distinct
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
}


view: CONTRACT__1efc5524_5a00_4457_bff0_1bf46be9702a {
sql_table_name:sforce2.SFORCE.CONTRACT ;;
dimension: ID {
 sql: ${TABLE}.ID;;
}
dimension: ACCOUNTID {
 sql: ${TABLE}.ACCOUNTID;;
}
dimension: PRICEBOOK2ID {
 sql: ${TABLE}.PRICEBOOK2ID;;
}
dimension: OWNEREXPIRATIONNOTICE {
 sql: ${TABLE}.OWNEREXPIRATIONNOTICE;;
}
dimension: STARTDATE {
 sql: ${TABLE}.STARTDATE;;
}
dimension: ENDDATE {
 sql: ${TABLE}.ENDDATE;;
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
measure: BILLINGLATITUDE {
type:count_distinct
 sql: ${TABLE}.BILLINGLATITUDE;;
}
measure: BILLINGLONGITUDE {
type:count_distinct
 sql: ${TABLE}.BILLINGLONGITUDE;;
}
dimension: BILLINGGEOCODEACCURACY {
 sql: ${TABLE}.BILLINGGEOCODEACCURACY;;
}
measure: CONTRACTTERM {
type:count_distinct
 sql: ${TABLE}.CONTRACTTERM;;
}
dimension: OWNERID {
 sql: ${TABLE}.OWNERID;;
}
dimension: STATUS {
 sql: ${TABLE}.STATUS;;
}
dimension: COMPANYSIGNEDID {
 sql: ${TABLE}.COMPANYSIGNEDID;;
}
dimension: COMPANYSIGNEDDATE {
 sql: ${TABLE}.COMPANYSIGNEDDATE;;
}
dimension: CUSTOMERSIGNEDID {
 sql: ${TABLE}.CUSTOMERSIGNEDID;;
}
dimension: CUSTOMERSIGNEDTITLE {
 sql: ${TABLE}.CUSTOMERSIGNEDTITLE;;
}
dimension: CUSTOMERSIGNEDDATE {
 sql: ${TABLE}.CUSTOMERSIGNEDDATE;;
}
dimension: SPECIALTERMS {
 sql: ${TABLE}.SPECIALTERMS;;
}
dimension: ACTIVATEDBYID {
 sql: ${TABLE}.ACTIVATEDBYID;;
}
dimension: ACTIVATEDDATE {
 sql: ${TABLE}.ACTIVATEDDATE;;
}
dimension: STATUSCODE {
 sql: ${TABLE}.STATUSCODE;;
}
dimension: DESCRIPTION {
 sql: ${TABLE}.DESCRIPTION;;
}
dimension: ISDELETED {
 sql: ${TABLE}.ISDELETED;;
}
dimension: CONTRACTNUMBER {
 sql: ${TABLE}.CONTRACTNUMBER;;
}
dimension: LASTAPPROVEDDATE {
 sql: ${TABLE}.LASTAPPROVEDDATE;;
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
}