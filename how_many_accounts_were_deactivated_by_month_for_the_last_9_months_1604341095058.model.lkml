
connection:"pmdevpresto"


explore: ACCOUNT__fa0a5b60_0c97_4fde_9812_a587731c22f9 {

join: EVENT__6406e0cb_ee07_4772_be3b_5d369654a4f9 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${ACCOUNT__fa0a5b60_0c97_4fde_9812_a587731c22f9.ID} <= ${EVENT__6406e0cb_ee07_4772_be3b_5d369654a4f9.WHATID} 
 and ${ACCOUNT__fa0a5b60_0c97_4fde_9812_a587731c22f9.ID} = ${EVENT__6406e0cb_ee07_4772_be3b_5d369654a4f9.ACCOUNTID} ;;
}
join: TASK__54fc500b_7684_43a5_a557_e81de5a3987a {
 type: inner
 relationship: many_to_one
 sql_on: ${ACCOUNT__fa0a5b60_0c97_4fde_9812_a587731c22f9.ID} = ${TASK__54fc500b_7684_43a5_a557_e81de5a3987a.WHATID} 
 and ${ACCOUNT__fa0a5b60_0c97_4fde_9812_a587731c22f9.ID} = ${TASK__54fc500b_7684_43a5_a557_e81de5a3987a.ACCOUNTID} ;;
}
join: ORGANIZATION__2c6d0d21_76e9_4eb5_bd3e_b8bd75a2e02b {
 type: inner
 relationship: many_to_one
 sql_on: ${ORGANIZATION__2c6d0d21_76e9_4eb5_bd3e_b8bd75a2e02b.ID} <= ${TASK__54fc500b_7684_43a5_a557_e81de5a3987a.ID} ;;
}
}


view: EVENT__6406e0cb_ee07_4772_be3b_5d369654a4f9 {
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
dimension: DURATIONINMINUTES {
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
dimension: RECURRENCEINTERVAL {
 sql: ${TABLE}.RECURRENCEINTERVAL;;
}
dimension: RECURRENCEDAYOFWEEKMASK {
 sql: ${TABLE}.RECURRENCEDAYOFWEEKMASK;;
}
dimension: RECURRENCEDAYOFMONTH {
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
measure: DURATIONINMINUTES_count {
type:count
 drill_fields: [detail*]
}
measure: DURATIONINMINUTES_sum {
type:sum
sql: ${DURATIONINMINUTES} ;;
 drill_fields: [detail*]
}
measure: RECURRENCEINTERVAL_count {
type:count
 drill_fields: [detail*]
}
measure: RECURRENCEINTERVAL_sum {
type:sum
sql: ${RECURRENCEINTERVAL} ;;
 drill_fields: [detail*]
}
measure: RECURRENCEDAYOFWEEKMASK_count {
type:count
 drill_fields: [detail*]
}
measure: RECURRENCEDAYOFWEEKMASK_sum {
type:sum
sql: ${RECURRENCEDAYOFWEEKMASK} ;;
 drill_fields: [detail*]
}
measure: RECURRENCEDAYOFMONTH_count {
type:count
 drill_fields: [detail*]
}
measure: RECURRENCEDAYOFMONTH_sum {
type:sum
sql: ${RECURRENCEDAYOFMONTH} ;;
 drill_fields: [detail*]
}
set: detail {
fields: [ID, WHOID, WHATID, SUBJECT, LOCATION, DURATIONINMINUTES, DESCRIPTION, ACCOUNTID, OWNERID, SHOWAS, GROUPEVENTTYPE, CREATEDBYID, LASTMODIFIEDBYID, RECURRENCEACTIVITYID, RECURRENCETIMEZONESIDKEY, RECURRENCETYPE, RECURRENCEINTERVAL, RECURRENCEDAYOFWEEKMASK, RECURRENCEDAYOFMONTH, RECURRENCEINSTANCE, RECURRENCEMONTHOFYEAR, EVENTSUBTYPE, RECURRENCE2PATTERNTEXT, RECURRENCE2PATTERNVERSION, RECURRENCE2PATTERNTIMEZONE]
}
}


view: ACCOUNT__fa0a5b60_0c97_4fde_9812_a587731c22f9 {
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


view: TASK__54fc500b_7684_43a5_a557_e81de5a3987a {
sql_table_name:sforce.SFORCE.TASK ;;
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
dimension: ACTIVITYDATE {
 sql: ${TABLE}.ACTIVITYDATE;;
}
dimension: STATUS {
 sql: ${TABLE}.STATUS;;
}
dimension: PRIORITY {
 sql: ${TABLE}.PRIORITY;;
}
dimension: ISHIGHPRIORITY {
 sql: ${TABLE}.ISHIGHPRIORITY;;
}
dimension: OWNERID {
 sql: ${TABLE}.OWNERID;;
}
dimension: DESCRIPTION {
 sql: ${TABLE}.DESCRIPTION;;
}
dimension: ISDELETED {
 sql: ${TABLE}.ISDELETED;;
}
dimension: ACCOUNTID {
 sql: ${TABLE}.ACCOUNTID;;
}
dimension: ISCLOSED {
 sql: ${TABLE}.ISCLOSED;;
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
dimension: CALLDURATIONINSECONDS {
 sql: ${TABLE}.CALLDURATIONINSECONDS;;
}
dimension: CALLTYPE {
 sql: ${TABLE}.CALLTYPE;;
}
dimension: CALLDISPOSITION {
 sql: ${TABLE}.CALLDISPOSITION;;
}
dimension: CALLOBJECT {
 sql: ${TABLE}.CALLOBJECT;;
}
dimension: REMINDERDATETIME {
 sql: ${TABLE}.REMINDERDATETIME;;
}
dimension: ISREMINDERSET {
 sql: ${TABLE}.ISREMINDERSET;;
}
dimension: RECURRENCEACTIVITYID {
 sql: ${TABLE}.RECURRENCEACTIVITYID;;
}
dimension: ISRECURRENCE {
 sql: ${TABLE}.ISRECURRENCE;;
}
dimension: RECURRENCESTARTDATEONLY {
 sql: ${TABLE}.RECURRENCESTARTDATEONLY;;
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
dimension: RECURRENCEINTERVAL {
 sql: ${TABLE}.RECURRENCEINTERVAL;;
}
dimension: RECURRENCEDAYOFWEEKMASK {
 sql: ${TABLE}.RECURRENCEDAYOFWEEKMASK;;
}
dimension: RECURRENCEDAYOFMONTH {
 sql: ${TABLE}.RECURRENCEDAYOFMONTH;;
}
dimension: RECURRENCEINSTANCE {
 sql: ${TABLE}.RECURRENCEINSTANCE;;
}
dimension: RECURRENCEMONTHOFYEAR {
 sql: ${TABLE}.RECURRENCEMONTHOFYEAR;;
}
dimension: RECURRENCEREGENERATEDTYPE {
 sql: ${TABLE}.RECURRENCEREGENERATEDTYPE;;
}
dimension: TASKSUBTYPE {
 sql: ${TABLE}.TASKSUBTYPE;;
}
dimension: COMPLETEDDATETIME {
 sql: ${TABLE}.COMPLETEDDATETIME;;
}
measure: CALLDURATIONINSECONDS_count {
type:count
 drill_fields: [detail*]
}
measure: CALLDURATIONINSECONDS_sum {
type:sum
sql: ${CALLDURATIONINSECONDS} ;;
 drill_fields: [detail*]
}
measure: RECURRENCEINTERVAL_count {
type:count
 drill_fields: [detail*]
}
measure: RECURRENCEINTERVAL_sum {
type:sum
sql: ${RECURRENCEINTERVAL} ;;
 drill_fields: [detail*]
}
measure: RECURRENCEDAYOFWEEKMASK_count {
type:count
 drill_fields: [detail*]
}
measure: RECURRENCEDAYOFWEEKMASK_sum {
type:sum
sql: ${RECURRENCEDAYOFWEEKMASK} ;;
 drill_fields: [detail*]
}
measure: RECURRENCEDAYOFMONTH_count {
type:count
 drill_fields: [detail*]
}
measure: RECURRENCEDAYOFMONTH_sum {
type:sum
sql: ${RECURRENCEDAYOFMONTH} ;;
 drill_fields: [detail*]
}
set: detail {
fields: [ID, WHOID, WHATID, SUBJECT, STATUS, PRIORITY, OWNERID, DESCRIPTION, ACCOUNTID, CREATEDBYID, LASTMODIFIEDBYID, CALLDURATIONINSECONDS, CALLTYPE, CALLDISPOSITION, CALLOBJECT, RECURRENCEACTIVITYID, RECURRENCETIMEZONESIDKEY, RECURRENCETYPE, RECURRENCEINTERVAL, RECURRENCEDAYOFWEEKMASK, RECURRENCEDAYOFMONTH, RECURRENCEINSTANCE, RECURRENCEMONTHOFYEAR, RECURRENCEREGENERATEDTYPE, TASKSUBTYPE]
}
}


view: ORGANIZATION__2c6d0d21_76e9_4eb5_bd3e_b8bd75a2e02b {
sql_table_name:sforce.SFORCE.ORGANIZATION ;;
dimension: ID {
 sql: ${TABLE}.ID;;
}
dimension: NAME {
 sql: ${TABLE}.NAME;;
}
dimension: DIVISION {
 sql: ${TABLE}.DIVISION;;
}
dimension: STREET {
 sql: ${TABLE}.STREET;;
}
dimension: CITY {
 sql: ${TABLE}.CITY;;
}
dimension: STATE {
 sql: ${TABLE}.STATE;;
}
dimension: POSTALCODE {
 sql: ${TABLE}.POSTALCODE;;
}
dimension: COUNTRY {
 sql: ${TABLE}.COUNTRY;;
}
dimension: LATITUDE {
 sql: ${TABLE}.LATITUDE;;
}
dimension: LONGITUDE {
 sql: ${TABLE}.LONGITUDE;;
}
dimension: GEOCODEACCURACY {
 sql: ${TABLE}.GEOCODEACCURACY;;
}
dimension: PHONE {
 sql: ${TABLE}.PHONE;;
}
dimension: FAX {
 sql: ${TABLE}.FAX;;
}
dimension: PRIMARYCONTACT {
 sql: ${TABLE}.PRIMARYCONTACT;;
}
dimension: DEFAULTLOCALESIDKEY {
 sql: ${TABLE}.DEFAULTLOCALESIDKEY;;
}
dimension: TIMEZONESIDKEY {
 sql: ${TABLE}.TIMEZONESIDKEY;;
}
dimension: LANGUAGELOCALEKEY {
 sql: ${TABLE}.LANGUAGELOCALEKEY;;
}
dimension: RECEIVESINFOEMAILS {
 sql: ${TABLE}.RECEIVESINFOEMAILS;;
}
dimension: RECEIVESADMININFOEMAILS {
 sql: ${TABLE}.RECEIVESADMININFOEMAILS;;
}
dimension: PREFERENCESREQUIREOPPORTUNITYPRODUCTS {
 sql: ${TABLE}.PREFERENCESREQUIREOPPORTUNITYPRODUCTS;;
}
dimension: PREFERENCESTRANSACTIONSECURITYPOLICY {
 sql: ${TABLE}.PREFERENCESTRANSACTIONSECURITYPOLICY;;
}
dimension: PREFERENCESTERMINATEOLDESTSESSION {
 sql: ${TABLE}.PREFERENCESTERMINATEOLDESTSESSION;;
}
dimension: PREFERENCESCONSENTMANAGEMENTENABLED {
 sql: ${TABLE}.PREFERENCESCONSENTMANAGEMENTENABLED;;
}
dimension: PREFERENCESINDIVIDUALAUTOCREATEENABLED {
 sql: ${TABLE}.PREFERENCESINDIVIDUALAUTOCREATEENABLED;;
}
dimension: PREFERENCESAUTOSELECTINDIVIDUALONMERGE {
 sql: ${TABLE}.PREFERENCESAUTOSELECTINDIVIDUALONMERGE;;
}
dimension: PREFERENCESLIGHTNINGLOGINENABLED {
 sql: ${TABLE}.PREFERENCESLIGHTNINGLOGINENABLED;;
}
dimension: PREFERENCESONLYLLPERMUSERALLOWED {
 sql: ${TABLE}.PREFERENCESONLYLLPERMUSERALLOWED;;
}
dimension: FISCALYEARSTARTMONTH {
 sql: ${TABLE}.FISCALYEARSTARTMONTH;;
}
dimension: USESSTARTDATEASFISCALYEARNAME {
 sql: ${TABLE}.USESSTARTDATEASFISCALYEARNAME;;
}
dimension: DEFAULTACCOUNTACCESS {
 sql: ${TABLE}.DEFAULTACCOUNTACCESS;;
}
dimension: DEFAULTCONTACTACCESS {
 sql: ${TABLE}.DEFAULTCONTACTACCESS;;
}
dimension: DEFAULTOPPORTUNITYACCESS {
 sql: ${TABLE}.DEFAULTOPPORTUNITYACCESS;;
}
dimension: DEFAULTLEADACCESS {
 sql: ${TABLE}.DEFAULTLEADACCESS;;
}
dimension: DEFAULTCASEACCESS {
 sql: ${TABLE}.DEFAULTCASEACCESS;;
}
dimension: DEFAULTCALENDARACCESS {
 sql: ${TABLE}.DEFAULTCALENDARACCESS;;
}
dimension: DEFAULTPRICEBOOKACCESS {
 sql: ${TABLE}.DEFAULTPRICEBOOKACCESS;;
}
dimension: DEFAULTCAMPAIGNACCESS {
 sql: ${TABLE}.DEFAULTCAMPAIGNACCESS;;
}
dimension: SYSTEMMODSTAMP {
 sql: ${TABLE}.SYSTEMMODSTAMP;;
}
dimension: COMPLIANCEBCCEMAIL {
 sql: ${TABLE}.COMPLIANCEBCCEMAIL;;
}
dimension: UISKIN {
 sql: ${TABLE}.UISKIN;;
}
dimension: SIGNUPCOUNTRYISOCODE {
 sql: ${TABLE}.SIGNUPCOUNTRYISOCODE;;
}
dimension: TRIALEXPIRATIONDATE {
 sql: ${TABLE}.TRIALEXPIRATIONDATE;;
}
dimension: NUMKNOWLEDGESERVICE {
 sql: ${TABLE}.NUMKNOWLEDGESERVICE;;
}
dimension: ORGANIZATIONTYPE {
 sql: ${TABLE}.ORGANIZATIONTYPE;;
}
dimension: NAMESPACEPREFIX {
 sql: ${TABLE}.NAMESPACEPREFIX;;
}
dimension: INSTANCENAME {
 sql: ${TABLE}.INSTANCENAME;;
}
dimension: ISSANDBOX {
 sql: ${TABLE}.ISSANDBOX;;
}
dimension: WEBTOCASEDEFAULTORIGIN {
 sql: ${TABLE}.WEBTOCASEDEFAULTORIGIN;;
}
dimension: MONTHLYPAGEVIEWSUSED {
 sql: ${TABLE}.MONTHLYPAGEVIEWSUSED;;
}
dimension: MONTHLYPAGEVIEWSENTITLEMENT {
 sql: ${TABLE}.MONTHLYPAGEVIEWSENTITLEMENT;;
}
dimension: ISREADONLY {
 sql: ${TABLE}.ISREADONLY;;
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
measure: LATITUDE_count {
type:count
 drill_fields: [detail*]
}
measure: LATITUDE_sum {
type:sum
sql: ${LATITUDE} ;;
 drill_fields: [detail*]
}
measure: LONGITUDE_count {
type:count
 drill_fields: [detail*]
}
measure: LONGITUDE_sum {
type:sum
sql: ${LONGITUDE} ;;
 drill_fields: [detail*]
}
measure: FISCALYEARSTARTMONTH_count {
type:count
 drill_fields: [detail*]
}
measure: FISCALYEARSTARTMONTH_sum {
type:sum
sql: ${FISCALYEARSTARTMONTH} ;;
 drill_fields: [detail*]
}
measure: NUMKNOWLEDGESERVICE_count {
type:count
 drill_fields: [detail*]
}
measure: NUMKNOWLEDGESERVICE_sum {
type:sum
sql: ${NUMKNOWLEDGESERVICE} ;;
 drill_fields: [detail*]
}
measure: MONTHLYPAGEVIEWSUSED_count {
type:count
 drill_fields: [detail*]
}
measure: MONTHLYPAGEVIEWSUSED_sum {
type:sum
sql: ${MONTHLYPAGEVIEWSUSED} ;;
 drill_fields: [detail*]
}
measure: MONTHLYPAGEVIEWSENTITLEMENT_count {
type:count
 drill_fields: [detail*]
}
measure: MONTHLYPAGEVIEWSENTITLEMENT_sum {
type:sum
sql: ${MONTHLYPAGEVIEWSENTITLEMENT} ;;
 drill_fields: [detail*]
}
set: detail {
fields: [ID, NAME, DIVISION, STREET, CITY, STATE, POSTALCODE, COUNTRY, LATITUDE, LONGITUDE, GEOCODEACCURACY, PHONE, FAX, PRIMARYCONTACT, DEFAULTLOCALESIDKEY, TIMEZONESIDKEY, LANGUAGELOCALEKEY, FISCALYEARSTARTMONTH, DEFAULTACCOUNTACCESS, DEFAULTCONTACTACCESS, DEFAULTOPPORTUNITYACCESS, DEFAULTLEADACCESS, DEFAULTCASEACCESS, DEFAULTCALENDARACCESS, DEFAULTPRICEBOOKACCESS, DEFAULTCAMPAIGNACCESS, COMPLIANCEBCCEMAIL, UISKIN, SIGNUPCOUNTRYISOCODE, NUMKNOWLEDGESERVICE, ORGANIZATIONTYPE, NAMESPACEPREFIX, INSTANCENAME, WEBTOCASEDEFAULTORIGIN, MONTHLYPAGEVIEWSUSED, MONTHLYPAGEVIEWSENTITLEMENT, CREATEDBYID, LASTMODIFIEDBYID]
}
}