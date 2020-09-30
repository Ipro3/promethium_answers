
connection: "pmdevpresto"


explore: TABLE_WITH_ALL_COLUMN_TYPES__46694f3e_cb7c_4dd5_bcbe_9c7bf85d03b6 {

join: TABLE_WITH_ALL_COLUMN_TYPES__4f153961_4fe6_4b0a_921e_c76bc655a152 {
 relationship: one_to_one
 sql_on: ${TABLE_WITH_ALL_COLUMN_TYPES__46694f3e_cb7c_4dd5_bcbe_9c7bf85d03b6.TABLE_WITH_ALL_COLUMN_TYPES.VARCHAR_TYPE} = ${TABLE_WITH_ALL_COLUMN_TYPES__4f153961_4fe6_4b0a_921e_c76bc655a152.TABLE_WITH_ALL_COLUMN_TYPES.varchar} ;;
}
join: PERMISSIONSETLICENSE__91897739_ae84_4a9f_96e7_7b92b1ea3d84 {
 relationship: one_to_one
 sql_on: ${TABLE_WITH_ALL_COLUMN_TYPES__46694f3e_cb7c_4dd5_bcbe_9c7bf85d03b6.TABLE_WITH_ALL_COLUMN_TYPES.VARCHAR_TYPE} = ${PERMISSIONSETLICENSE__91897739_ae84_4a9f_96e7_7b92b1ea3d84.PERMISSIONSETLICENSE.ID} 
 and ${TABLE_WITH_ALL_COLUMN_TYPES__4f153961_4fe6_4b0a_921e_c76bc655a152.TABLE_WITH_ALL_COLUMN_TYPES.varchar} = ${PERMISSIONSETLICENSE__91897739_ae84_4a9f_96e7_7b92b1ea3d84.PERMISSIONSETLICENSE.ID} ;;
}
}


view: TABLE_WITH_ALL_COLUMN_TYPES__4f153961_4fe6_4b0a_921e_c76bc655a152 {
sql_table_name:ds_mysql.promethium.TABLE_WITH_ALL_COLUMN_TYPES ;;
dimension: varchar {
 type: string
 sql: ${TABLE}.varchar;;
}
dimension: tinyint {
 type: string
 sql: ${TABLE}.tinyint;;
}
dimension: text {
 type: string
 sql: ${TABLE}.text;;
}
dimension: date {
 type: string
 sql: ${TABLE}.date;;
}
dimension: smallint {
 type: string
 sql: ${TABLE}.smallint;;
}
dimension: mediumint {
 type: string
 sql: ${TABLE}.mediumint;;
}
dimension: int {
 type: string
 sql: ${TABLE}.int;;
}
dimension: bigint {
 type: string
 sql: ${TABLE}.bigint;;
}
dimension: float {
 type: string
 sql: ${TABLE}.float;;
}
dimension: double {
 type: string
 sql: ${TABLE}.double;;
}
dimension: decimal {
 type: string
 sql: ${TABLE}.decimal;;
}
dimension: datetime {
 type: string
 sql: ${TABLE}.datetime;;
}
dimension: timestamp {
 type: string
 sql: ${TABLE}.timestamp;;
}
dimension: time {
 type: string
 sql: ${TABLE}.time;;
}
dimension: year {
 type: string
 sql: ${TABLE}.year;;
}
dimension: char {
 type: string
 sql: ${TABLE}.char;;
}
dimension: tinyblob {
 type: string
 sql: ${TABLE}.tinyblob;;
}
dimension: tinytext {
 type: string
 sql: ${TABLE}.tinytext;;
}
dimension: blob {
 type: string
 sql: ${TABLE}.blob;;
}
dimension: mediumblob {
 type: string
 sql: ${TABLE}.mediumblob;;
}
dimension: mediumtext {
 type: string
 sql: ${TABLE}.mediumtext;;
}
dimension: longblob {
 type: string
 sql: ${TABLE}.longblob;;
}
dimension: longtext {
 type: string
 sql: ${TABLE}.longtext;;
}
dimension: enum {
 type: string
 sql: ${TABLE}.enum;;
}
dimension: set {
 type: string
 sql: ${TABLE}.set;;
}
dimension: bool {
 type: string
 sql: ${TABLE}.bool;;
}
dimension: binary {
 type: string
 sql: ${TABLE}.binary;;
}
dimension: varbinary {
 type: string
 sql: ${TABLE}.varbinary;;
}
}


view: TABLE_WITH_ALL_COLUMN_TYPES__46694f3e_cb7c_4dd5_bcbe_9c7bf85d03b6 {
sql_table_name:oracle.RDSORACLEFORPRESTO.TABLE_WITH_ALL_COLUMN_TYPES ;;
dimension: VARCHAR_TYPE {
 type: string
 sql: ${TABLE}.VARCHAR_TYPE;;
}
dimension: NUMBER_TYPE {
 type: string
 sql: ${TABLE}.NUMBER_TYPE;;
}
dimension: DATE_TYPE {
 type: string
 sql: ${TABLE}.DATE_TYPE;;
}
dimension: CLOB_TYPE {
 type: string
 sql: ${TABLE}.CLOB_TYPE;;
}
dimension: BLOB_TYPE {
 type: string
 sql: ${TABLE}.BLOB_TYPE;;
}
dimension: BFILE_TYPE {
 type: string
 sql: ${TABLE}.BFILE_TYPE;;
}
dimension: BINARY_DOUBLE_TYPE {
 type: string
 sql: ${TABLE}.BINARY_DOUBLE_TYPE;;
}
dimension: B_FLOAT {
 type: string
 sql: ${TABLE}.B_FLOAT;;
}
dimension: CHAR_TYPE {
 type: string
 sql: ${TABLE}.CHAR_TYPE;;
}
dimension: FLOAT_TYPE {
 type: string
 sql: ${TABLE}.FLOAT_TYPE;;
}
dimension: INTERVAL_TYPE {
 type: string
 sql: ${TABLE}.INTERVAL_TYPE;;
}
dimension: INTERVAL_YEAR_TYPE {
 type: string
 sql: ${TABLE}.INTERVAL_YEAR_TYPE;;
}
dimension: LONG_TYPE {
 type: string
 sql: ${TABLE}.LONG_TYPE;;
}
dimension: NCHAR_TYPE {
 type: string
 sql: ${TABLE}.NCHAR_TYPE;;
}
dimension: NVARCHAR_TYPE {
 type: string
 sql: ${TABLE}.NVARCHAR_TYPE;;
}
dimension: NCLOB_TYPE {
 type: string
 sql: ${TABLE}.NCLOB_TYPE;;
}
dimension: RAW_TYPE {
 type: string
 sql: ${TABLE}.RAW_TYPE;;
}
dimension: ROW_ID_TYPE {
 type: string
 sql: ${TABLE}.ROW_ID_TYPE;;
}
dimension: TIMESTAMP_TYPE {
 type: string
 sql: ${TABLE}.TIMESTAMP_TYPE;;
}
dimension: UROWID_TYPE {
 type: string
 sql: ${TABLE}.UROWID_TYPE;;
}
}


view: PERMISSIONSETLICENSE__91897739_ae84_4a9f_96e7_7b92b1ea3d84 {
sql_table_name:sforce.SFORCE.PERMISSIONSETLICENSE ;;
dimension: ID {
 type: string
 sql: ${TABLE}.ID;;
}
dimension: ISDELETED {
 type: string
 sql: ${TABLE}.ISDELETED;;
}
dimension: DEVELOPERNAME {
 type: string
 sql: ${TABLE}.DEVELOPERNAME;;
}
dimension: LANGUAGENULL {
 type: string
 sql: ${TABLE}.LANGUAGENULL;;
}
dimension: MASTERLABEL {
 type: string
 sql: ${TABLE}.MASTERLABEL;;
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
dimension: PERMISSIONSETLICENSEKEY {
 type: string
 sql: ${TABLE}.PERMISSIONSETLICENSEKEY;;
}
dimension: TOTALLICENSES {
 type: string
 sql: ${TABLE}.TOTALLICENSES;;
}
dimension: STATUS {
 type: string
 sql: ${TABLE}.STATUS;;
}
dimension: EXPIRATIONDATE {
 type: string
 sql: ${TABLE}.EXPIRATIONDATE;;
}
dimension: MAXIMUMPERMISSIONSEMAILSINGLE {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSEMAILSINGLE;;
}
dimension: MAXIMUMPERMISSIONSEMAILMASS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSEMAILMASS;;
}
dimension: MAXIMUMPERMISSIONSEDITTASK {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSEDITTASK;;
}
dimension: MAXIMUMPERMISSIONSEDITEVENT {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSEDITEVENT;;
}
dimension: MAXIMUMPERMISSIONSEXPORTREPORT {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSEXPORTREPORT;;
}
dimension: MAXIMUMPERMISSIONSIMPORTPERSONAL {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSIMPORTPERSONAL;;
}
dimension: MAXIMUMPERMISSIONSDATAEXPORT {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSDATAEXPORT;;
}
dimension: MAXIMUMPERMISSIONSMANAGEUSERS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEUSERS;;
}
dimension: MAXIMUMPERMISSIONSEDITPUBLICFILTERS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSEDITPUBLICFILTERS;;
}
dimension: MAXIMUMPERMISSIONSEDITPUBLICTEMPLATES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSEDITPUBLICTEMPLATES;;
}
dimension: MAXIMUMPERMISSIONSMODIFYALLDATA {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMODIFYALLDATA;;
}
dimension: MAXIMUMPERMISSIONSMANAGECASES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGECASES;;
}
dimension: MAXIMUMPERMISSIONSMASSINLINEEDIT {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMASSINLINEEDIT;;
}
dimension: MAXIMUMPERMISSIONSEDITKNOWLEDGE {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSEDITKNOWLEDGE;;
}
dimension: MAXIMUMPERMISSIONSMANAGEKNOWLEDGE {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEKNOWLEDGE;;
}
dimension: MAXIMUMPERMISSIONSMANAGESOLUTIONS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGESOLUTIONS;;
}
dimension: MAXIMUMPERMISSIONSCUSTOMIZEAPPLICATION {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCUSTOMIZEAPPLICATION;;
}
dimension: MAXIMUMPERMISSIONSEDITREADONLYFIELDS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSEDITREADONLYFIELDS;;
}
dimension: MAXIMUMPERMISSIONSRUNREPORTS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSRUNREPORTS;;
}
dimension: MAXIMUMPERMISSIONSVIEWSETUP {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSVIEWSETUP;;
}
dimension: MAXIMUMPERMISSIONSTRANSFERANYENTITY {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSTRANSFERANYENTITY;;
}
dimension: MAXIMUMPERMISSIONSNEWREPORTBUILDER {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSNEWREPORTBUILDER;;
}
dimension: MAXIMUMPERMISSIONSACTIVATECONTRACT {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSACTIVATECONTRACT;;
}
dimension: MAXIMUMPERMISSIONSACTIVATEORDER {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSACTIVATEORDER;;
}
dimension: MAXIMUMPERMISSIONSIMPORTLEADS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSIMPORTLEADS;;
}
dimension: MAXIMUMPERMISSIONSMANAGELEADS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGELEADS;;
}
dimension: MAXIMUMPERMISSIONSTRANSFERANYLEAD {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSTRANSFERANYLEAD;;
}
dimension: MAXIMUMPERMISSIONSVIEWALLDATA {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSVIEWALLDATA;;
}
dimension: MAXIMUMPERMISSIONSEDITPUBLICDOCUMENTS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSEDITPUBLICDOCUMENTS;;
}
dimension: MAXIMUMPERMISSIONSCONTENTHUBONPREMISEUSER {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCONTENTHUBONPREMISEUSER;;
}
dimension: MAXIMUMPERMISSIONSVIEWENCRYPTEDDATA {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSVIEWENCRYPTEDDATA;;
}
dimension: MAXIMUMPERMISSIONSEDITBRANDTEMPLATES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSEDITBRANDTEMPLATES;;
}
dimension: MAXIMUMPERMISSIONSEDITHTMLTEMPLATES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSEDITHTMLTEMPLATES;;
}
dimension: MAXIMUMPERMISSIONSCHATTERINTERNALUSER {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCHATTERINTERNALUSER;;
}
dimension: MAXIMUMPERMISSIONSMANAGEENCRYPTIONKEYS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEENCRYPTIONKEYS;;
}
dimension: MAXIMUMPERMISSIONSDELETEACTIVATEDCONTRACT {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSDELETEACTIVATEDCONTRACT;;
}
dimension: MAXIMUMPERMISSIONSCHATTERINVITEEXTERNALUSERS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCHATTERINVITEEXTERNALUSERS;;
}
dimension: MAXIMUMPERMISSIONSSENDSITREQUESTS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSSENDSITREQUESTS;;
}
dimension: MAXIMUMPERMISSIONSMANAGEREMOTEACCESS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEREMOTEACCESS;;
}
dimension: MAXIMUMPERMISSIONSCANUSENEWDASHBOARDBUILDER {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCANUSENEWDASHBOARDBUILDER;;
}
dimension: MAXIMUMPERMISSIONSMANAGECATEGORIES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGECATEGORIES;;
}
dimension: MAXIMUMPERMISSIONSCONVERTLEADS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCONVERTLEADS;;
}
dimension: MAXIMUMPERMISSIONSPASSWORDNEVEREXPIRES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSPASSWORDNEVEREXPIRES;;
}
dimension: MAXIMUMPERMISSIONSUSETEAMREASSIGNWIZARDS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSUSETEAMREASSIGNWIZARDS;;
}
dimension: MAXIMUMPERMISSIONSEDITACTIVATEDORDERS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSEDITACTIVATEDORDERS;;
}
dimension: MAXIMUMPERMISSIONSINSTALLPACKAGING {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSINSTALLPACKAGING;;
}
dimension: MAXIMUMPERMISSIONSPUBLISHPACKAGING {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSPUBLISHPACKAGING;;
}
dimension: MAXIMUMPERMISSIONSCHATTEROWNGROUPS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCHATTEROWNGROUPS;;
}
dimension: MAXIMUMPERMISSIONSEDITOPPLINEITEMUNITPRICE {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSEDITOPPLINEITEMUNITPRICE;;
}
dimension: MAXIMUMPERMISSIONSCREATEPACKAGING {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCREATEPACKAGING;;
}
dimension: MAXIMUMPERMISSIONSBULKAPIHARDDELETE {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSBULKAPIHARDDELETE;;
}
dimension: MAXIMUMPERMISSIONSSOLUTIONIMPORT {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSSOLUTIONIMPORT;;
}
dimension: MAXIMUMPERMISSIONSMANAGECALLCENTERS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGECALLCENTERS;;
}
dimension: MAXIMUMPERMISSIONSMANAGESYNONYMS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGESYNONYMS;;
}
dimension: MAXIMUMPERMISSIONSVIEWCONTENT {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSVIEWCONTENT;;
}
dimension: MAXIMUMPERMISSIONSMANAGEEMAILCLIENTCONFIG {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEEMAILCLIENTCONFIG;;
}
dimension: MAXIMUMPERMISSIONSENABLENOTIFICATIONS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSENABLENOTIFICATIONS;;
}
dimension: MAXIMUMPERMISSIONSMANAGEDATAINTEGRATIONS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEDATAINTEGRATIONS;;
}
dimension: MAXIMUMPERMISSIONSDISTRIBUTEFROMPERSWKSP {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSDISTRIBUTEFROMPERSWKSP;;
}
dimension: MAXIMUMPERMISSIONSVIEWDATACATEGORIES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSVIEWDATACATEGORIES;;
}
dimension: MAXIMUMPERMISSIONSMANAGEDATACATEGORIES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEDATACATEGORIES;;
}
dimension: MAXIMUMPERMISSIONSAUTHORAPEX {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSAUTHORAPEX;;
}
dimension: MAXIMUMPERMISSIONSMANAGEMOBILE {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEMOBILE;;
}
dimension: MAXIMUMPERMISSIONSAPIENABLED {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSAPIENABLED;;
}
dimension: MAXIMUMPERMISSIONSMANAGECUSTOMREPORTTYPES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGECUSTOMREPORTTYPES;;
}
dimension: MAXIMUMPERMISSIONSEDITCASECOMMENTS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSEDITCASECOMMENTS;;
}
dimension: MAXIMUMPERMISSIONSTRANSFERANYCASE {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSTRANSFERANYCASE;;
}
dimension: MAXIMUMPERMISSIONSCONTENTADMINISTRATOR {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCONTENTADMINISTRATOR;;
}
dimension: MAXIMUMPERMISSIONSCREATEWORKSPACES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCREATEWORKSPACES;;
}
dimension: MAXIMUMPERMISSIONSMANAGECONTENTPERMISSIONS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGECONTENTPERMISSIONS;;
}
dimension: MAXIMUMPERMISSIONSMANAGECONTENTPROPERTIES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGECONTENTPROPERTIES;;
}
dimension: MAXIMUMPERMISSIONSMANAGECONTENTTYPES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGECONTENTTYPES;;
}
dimension: MAXIMUMPERMISSIONSMANAGEEXCHANGECONFIG {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEEXCHANGECONFIG;;
}
dimension: MAXIMUMPERMISSIONSMANAGEANALYTICSNAPSHOTS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEANALYTICSNAPSHOTS;;
}
dimension: MAXIMUMPERMISSIONSSCHEDULEREPORTS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSSCHEDULEREPORTS;;
}
dimension: MAXIMUMPERMISSIONSMANAGEBUSINESSHOURHOLIDAYS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEBUSINESSHOURHOLIDAYS;;
}
dimension: MAXIMUMPERMISSIONSMANAGEDYNAMICDASHBOARDS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEDYNAMICDASHBOARDS;;
}
dimension: MAXIMUMPERMISSIONSCUSTOMSIDEBARONALLPAGES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCUSTOMSIDEBARONALLPAGES;;
}
dimension: MAXIMUMPERMISSIONSMANAGEINTERACTION {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEINTERACTION;;
}
dimension: MAXIMUMPERMISSIONSVIEWMYTEAMSDASHBOARDS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSVIEWMYTEAMSDASHBOARDS;;
}
dimension: MAXIMUMPERMISSIONSMODERATECHATTER {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMODERATECHATTER;;
}
dimension: MAXIMUMPERMISSIONSRESETPASSWORDS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSRESETPASSWORDS;;
}
dimension: MAXIMUMPERMISSIONSFLOWUFLREQUIRED {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSFLOWUFLREQUIRED;;
}
dimension: MAXIMUMPERMISSIONSCANINSERTFEEDSYSTEMFIELDS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCANINSERTFEEDSYSTEMFIELDS;;
}
dimension: MAXIMUMPERMISSIONSACTIVITIESACCESS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSACTIVITIESACCESS;;
}
dimension: MAXIMUMPERMISSIONSMANAGEKNOWLEDGEIMPORTEXPORT {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEKNOWLEDGEIMPORTEXPORT;;
}
dimension: MAXIMUMPERMISSIONSEMAILTEMPLATEMANAGEMENT {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSEMAILTEMPLATEMANAGEMENT;;
}
dimension: MAXIMUMPERMISSIONSEMAILADMINISTRATION {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSEMAILADMINISTRATION;;
}
dimension: MAXIMUMPERMISSIONSMANAGECHATTERMESSAGES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGECHATTERMESSAGES;;
}
dimension: MAXIMUMPERMISSIONSALLOWEMAILIC {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSALLOWEMAILIC;;
}
dimension: MAXIMUMPERMISSIONSCHATTERFILELINK {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCHATTERFILELINK;;
}
dimension: MAXIMUMPERMISSIONSFORCETWOFACTOR {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSFORCETWOFACTOR;;
}
dimension: MAXIMUMPERMISSIONSVIEWEVENTLOGFILES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSVIEWEVENTLOGFILES;;
}
dimension: MAXIMUMPERMISSIONSMANAGENETWORKS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGENETWORKS;;
}
dimension: MAXIMUMPERMISSIONSMANAGEAUTHPROVIDERS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEAUTHPROVIDERS;;
}
dimension: MAXIMUMPERMISSIONSRUNFLOW {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSRUNFLOW;;
}
dimension: MAXIMUMPERMISSIONSCREATECUSTOMIZEDASHBOARDS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCREATECUSTOMIZEDASHBOARDS;;
}
dimension: MAXIMUMPERMISSIONSCREATEDASHBOARDFOLDERS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCREATEDASHBOARDFOLDERS;;
}
dimension: MAXIMUMPERMISSIONSVIEWPUBLICDASHBOARDS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSVIEWPUBLICDASHBOARDS;;
}
dimension: MAXIMUMPERMISSIONSMANAGEDASHBDSINPUBFOLDERS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEDASHBDSINPUBFOLDERS;;
}
dimension: MAXIMUMPERMISSIONSCREATECUSTOMIZEREPORTS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCREATECUSTOMIZEREPORTS;;
}
dimension: MAXIMUMPERMISSIONSCREATEREPORTFOLDERS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCREATEREPORTFOLDERS;;
}
dimension: MAXIMUMPERMISSIONSVIEWPUBLICREPORTS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSVIEWPUBLICREPORTS;;
}
dimension: MAXIMUMPERMISSIONSMANAGEREPORTSINPUBFOLDERS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEREPORTSINPUBFOLDERS;;
}
dimension: MAXIMUMPERMISSIONSEDITMYDASHBOARDS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSEDITMYDASHBOARDS;;
}
dimension: MAXIMUMPERMISSIONSEDITMYREPORTS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSEDITMYREPORTS;;
}
dimension: MAXIMUMPERMISSIONSVIEWALLUSERS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSVIEWALLUSERS;;
}
dimension: MAXIMUMPERMISSIONSALLOWUNIVERSALSEARCH {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSALLOWUNIVERSALSEARCH;;
}
dimension: MAXIMUMPERMISSIONSCONNECTORGTOENVIRONMENTHUB {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCONNECTORGTOENVIRONMENTHUB;;
}
dimension: MAXIMUMPERMISSIONSWORKCALIBRATIONUSER {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSWORKCALIBRATIONUSER;;
}
dimension: MAXIMUMPERMISSIONSCREATECUSTOMIZEFILTERS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCREATECUSTOMIZEFILTERS;;
}
dimension: MAXIMUMPERMISSIONSWORKDOTCOMUSERPERM {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSWORKDOTCOMUSERPERM;;
}
dimension: MAXIMUMPERMISSIONSCONTENTHUBUSER {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCONTENTHUBUSER;;
}
dimension: MAXIMUMPERMISSIONSGOVERNNETWORKS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSGOVERNNETWORKS;;
}
dimension: MAXIMUMPERMISSIONSSALESCONSOLE {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSSALESCONSOLE;;
}
dimension: MAXIMUMPERMISSIONSTWOFACTORAPI {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSTWOFACTORAPI;;
}
dimension: MAXIMUMPERMISSIONSDELETETOPICS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSDELETETOPICS;;
}
dimension: MAXIMUMPERMISSIONSEDITTOPICS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSEDITTOPICS;;
}
dimension: MAXIMUMPERMISSIONSCREATETOPICS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCREATETOPICS;;
}
dimension: MAXIMUMPERMISSIONSASSIGNTOPICS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSASSIGNTOPICS;;
}
dimension: MAXIMUMPERMISSIONSIDENTITYENABLED {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSIDENTITYENABLED;;
}
dimension: MAXIMUMPERMISSIONSIDENTITYCONNECT {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSIDENTITYCONNECT;;
}
dimension: MAXIMUMPERMISSIONSALLOWVIEWKNOWLEDGE {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSALLOWVIEWKNOWLEDGE;;
}
dimension: MAXIMUMPERMISSIONSCONTENTWORKSPACES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCONTENTWORKSPACES;;
}
dimension: MAXIMUMPERMISSIONSMANAGESEARCHPROMOTIONRULES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGESEARCHPROMOTIONRULES;;
}
dimension: MAXIMUMPERMISSIONSCUSTOMMOBILEAPPSACCESS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCUSTOMMOBILEAPPSACCESS;;
}
dimension: MAXIMUMPERMISSIONSVIEWHELPLINK {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSVIEWHELPLINK;;
}
dimension: MAXIMUMPERMISSIONSMANAGEPROFILESPERMISSIONSETS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEPROFILESPERMISSIONSETS;;
}
dimension: MAXIMUMPERMISSIONSASSIGNPERMISSIONSETS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSASSIGNPERMISSIONSETS;;
}
dimension: MAXIMUMPERMISSIONSMANAGEROLES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEROLES;;
}
dimension: MAXIMUMPERMISSIONSMANAGEIPADDRESSES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEIPADDRESSES;;
}
dimension: MAXIMUMPERMISSIONSMANAGESHARING {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGESHARING;;
}
dimension: MAXIMUMPERMISSIONSMANAGEINTERNALUSERS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEINTERNALUSERS;;
}
dimension: MAXIMUMPERMISSIONSMANAGEPASSWORDPOLICIES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEPASSWORDPOLICIES;;
}
dimension: MAXIMUMPERMISSIONSMANAGELOGINACCESSPOLICIES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGELOGINACCESSPOLICIES;;
}
dimension: MAXIMUMPERMISSIONSVIEWPLATFORMEVENTS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSVIEWPLATFORMEVENTS;;
}
dimension: MAXIMUMPERMISSIONSMANAGECUSTOMPERMISSIONS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGECUSTOMPERMISSIONS;;
}
dimension: MAXIMUMPERMISSIONSCANVERIFYCOMMENT {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCANVERIFYCOMMENT;;
}
dimension: MAXIMUMPERMISSIONSMANAGEUNLISTEDGROUPS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEUNLISTEDGROUPS;;
}
dimension: MAXIMUMPERMISSIONSSTDAUTOMATICACTIVITYCAPTURE {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSSTDAUTOMATICACTIVITYCAPTURE;;
}
dimension: MAXIMUMPERMISSIONSMODIFYSECUREAGENTS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMODIFYSECUREAGENTS;;
}
dimension: MAXIMUMPERMISSIONSINSIGHTSAPPDASHBOARDEDITOR {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSINSIGHTSAPPDASHBOARDEDITOR;;
}
dimension: MAXIMUMPERMISSIONSMANAGETWOFACTOR {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGETWOFACTOR;;
}
dimension: MAXIMUMPERMISSIONSINSIGHTSAPPUSER {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSINSIGHTSAPPUSER;;
}
dimension: MAXIMUMPERMISSIONSINSIGHTSAPPADMIN {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSINSIGHTSAPPADMIN;;
}
dimension: MAXIMUMPERMISSIONSINSIGHTSAPPELTEDITOR {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSINSIGHTSAPPELTEDITOR;;
}
dimension: MAXIMUMPERMISSIONSINSIGHTSAPPUPLOADUSER {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSINSIGHTSAPPUPLOADUSER;;
}
dimension: MAXIMUMPERMISSIONSINSIGHTSCREATEAPPLICATION {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSINSIGHTSCREATEAPPLICATION;;
}
dimension: MAXIMUMPERMISSIONSLIGHTNINGEXPERIENCEUSER {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSLIGHTNINGEXPERIENCEUSER;;
}
dimension: MAXIMUMPERMISSIONSVIEWDATALEAKAGEEVENTS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSVIEWDATALEAKAGEEVENTS;;
}
dimension: MAXIMUMPERMISSIONSCONFIGCUSTOMRECS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCONFIGCUSTOMRECS;;
}
dimension: MAXIMUMPERMISSIONSSUBMITMACROSALLOWED {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSSUBMITMACROSALLOWED;;
}
dimension: MAXIMUMPERMISSIONSBULKMACROSALLOWED {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSBULKMACROSALLOWED;;
}
dimension: MAXIMUMPERMISSIONSSHAREINTERNALARTICLES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSSHAREINTERNALARTICLES;;
}
dimension: MAXIMUMPERMISSIONSMANAGESESSIONPERMISSIONSETS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGESESSIONPERMISSIONSETS;;
}
dimension: MAXIMUMPERMISSIONSMANAGETEMPLATEDAPP {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGETEMPLATEDAPP;;
}
dimension: MAXIMUMPERMISSIONSUSETEMPLATEDAPP {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSUSETEMPLATEDAPP;;
}
dimension: MAXIMUMPERMISSIONSSENDANNOUNCEMENTEMAILS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSSENDANNOUNCEMENTEMAILS;;
}
dimension: MAXIMUMPERMISSIONSCHATTEREDITOWNPOST {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCHATTEREDITOWNPOST;;
}
dimension: MAXIMUMPERMISSIONSCHATTEREDITOWNRECORDPOST {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCHATTEREDITOWNRECORDPOST;;
}
dimension: MAXIMUMPERMISSIONSSALESANALYTICSUSER {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSSALESANALYTICSUSER;;
}
dimension: MAXIMUMPERMISSIONSADMINANALYTICSUSER {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSADMINANALYTICSUSER;;
}
dimension: MAXIMUMPERMISSIONSSERVICEANALYTICSUSER {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSSERVICEANALYTICSUSER;;
}
dimension: MAXIMUMPERMISSIONSCREATEAUDITFIELDS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCREATEAUDITFIELDS;;
}
dimension: MAXIMUMPERMISSIONSUPDATEWITHINACTIVEOWNER {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSUPDATEWITHINACTIVEOWNER;;
}
dimension: MAXIMUMPERMISSIONSWAVETABULARDOWNLOAD {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSWAVETABULARDOWNLOAD;;
}
dimension: MAXIMUMPERMISSIONSAUTOMATICACTIVITYCAPTURE {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSAUTOMATICACTIVITYCAPTURE;;
}
dimension: MAXIMUMPERMISSIONSIMPORTCUSTOMOBJECTS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSIMPORTCUSTOMOBJECTS;;
}
dimension: MAXIMUMPERMISSIONSDELEGATEDTWOFACTOR {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSDELEGATEDTWOFACTOR;;
}
dimension: MAXIMUMPERMISSIONSCHATTERCOMPOSEUICODESNIPPET {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCHATTERCOMPOSEUICODESNIPPET;;
}
dimension: MAXIMUMPERMISSIONSSELECTFILESFROMSALESFORCE {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSSELECTFILESFROMSALESFORCE;;
}
dimension: MAXIMUMPERMISSIONSMODERATENETWORKUSERS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMODERATENETWORKUSERS;;
}
dimension: MAXIMUMPERMISSIONSMERGETOPICS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMERGETOPICS;;
}
dimension: MAXIMUMPERMISSIONSSUBSCRIBETOLIGHTNINGREPORTS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSSUBSCRIBETOLIGHTNINGREPORTS;;
}
dimension: MAXIMUMPERMISSIONSMANAGEPVTRPTSANDDASHBDS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEPVTRPTSANDDASHBDS;;
}
dimension: MAXIMUMPERMISSIONSALLOWLIGHTNINGLOGIN {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSALLOWLIGHTNINGLOGIN;;
}
dimension: MAXIMUMPERMISSIONSCAMPAIGNINFLUENCE2 {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCAMPAIGNINFLUENCE2;;
}
dimension: MAXIMUMPERMISSIONSVIEWDATAASSESSMENT {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSVIEWDATAASSESSMENT;;
}
dimension: MAXIMUMPERMISSIONSREMOVEDIRECTMESSAGEMEMBERS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSREMOVEDIRECTMESSAGEMEMBERS;;
}
dimension: MAXIMUMPERMISSIONSCANAPPROVEFEEDPOST {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCANAPPROVEFEEDPOST;;
}
dimension: MAXIMUMPERMISSIONSADDDIRECTMESSAGEMEMBERS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSADDDIRECTMESSAGEMEMBERS;;
}
dimension: MAXIMUMPERMISSIONSALLOWVIEWEDITCONVERTEDLEADS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSALLOWVIEWEDITCONVERTEDLEADS;;
}
dimension: MAXIMUMPERMISSIONSSHOWCOMPANYNAMEASUSERBADGE {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSSHOWCOMPANYNAMEASUSERBADGE;;
}
dimension: MAXIMUMPERMISSIONSACCESSCMC {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSACCESSCMC;;
}
dimension: MAXIMUMPERMISSIONSVIEWHEALTHCHECK {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSVIEWHEALTHCHECK;;
}
dimension: MAXIMUMPERMISSIONSMANAGEHEALTHCHECK {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEHEALTHCHECK;;
}
dimension: MAXIMUMPERMISSIONSPACKAGING2 {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSPACKAGING2;;
}
dimension: MAXIMUMPERMISSIONSMANAGECERTIFICATES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGECERTIFICATES;;
}
dimension: MAXIMUMPERMISSIONSCREATEREPORTINLIGHTNING {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCREATEREPORTINLIGHTNING;;
}
dimension: MAXIMUMPERMISSIONSPREVENTCLASSICEXPERIENCE {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSPREVENTCLASSICEXPERIENCE;;
}
dimension: MAXIMUMPERMISSIONSHIDEREADBYLIST {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSHIDEREADBYLIST;;
}
dimension: MAXIMUMPERMISSIONSUSESMARTDATADISCOVERY {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSUSESMARTDATADISCOVERY;;
}
dimension: MAXIMUMPERMISSIONSGETSMARTDATADISCOVERY {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSGETSMARTDATADISCOVERY;;
}
dimension: MAXIMUMPERMISSIONSCREATEUPDATESDDDATASET {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCREATEUPDATESDDDATASET;;
}
dimension: MAXIMUMPERMISSIONSCREATEUPDATESDDSTORY {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCREATEUPDATESDDSTORY;;
}
dimension: MAXIMUMPERMISSIONSMANAGESMARTDATADISCOVERY {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGESMARTDATADISCOVERY;;
}
dimension: MAXIMUMPERMISSIONSSHARESMARTDATADISCOVERYSTORY {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSSHARESMARTDATADISCOVERYSTORY;;
}
dimension: MAXIMUMPERMISSIONSMANAGESMARTDATADISCOVERYMODEL {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGESMARTDATADISCOVERYMODEL;;
}
dimension: MAXIMUMPERMISSIONSLISTEMAILSEND {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSLISTEMAILSEND;;
}
dimension: MAXIMUMPERMISSIONSFEEDPINNING {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSFEEDPINNING;;
}
dimension: MAXIMUMPERMISSIONSCHANGEDASHBOARDCOLORS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCHANGEDASHBOARDCOLORS;;
}
dimension: MAXIMUMPERMISSIONSIOTUSER {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSIOTUSER;;
}
dimension: MAXIMUMPERMISSIONSMANAGERECOMMENDATIONSTRATEGIES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGERECOMMENDATIONSTRATEGIES;;
}
dimension: MAXIMUMPERMISSIONSMANAGEPROPOSITIONS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGEPROPOSITIONS;;
}
dimension: MAXIMUMPERMISSIONSCLOSECONVERSATIONS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCLOSECONVERSATIONS;;
}
dimension: MAXIMUMPERMISSIONSUSEWEBLINK {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSUSEWEBLINK;;
}
dimension: MAXIMUMPERMISSIONSVIEWONLYEMBEDDEDAPPUSER {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSVIEWONLYEMBEDDEDAPPUSER;;
}
dimension: MAXIMUMPERMISSIONSVIEWALLACTIVITIES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSVIEWALLACTIVITIES;;
}
dimension: MAXIMUMPERMISSIONSSUBSCRIBEREPORTTOOTHERUSERS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSSUBSCRIBEREPORTTOOTHERUSERS;;
}
dimension: MAXIMUMPERMISSIONSLIGHTNINGCONSOLEALLOWEDFORUSER {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSLIGHTNINGCONSOLEALLOWEDFORUSER;;
}
dimension: MAXIMUMPERMISSIONSSUBSCRIBEREPORTSRUNASUSER {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSSUBSCRIBEREPORTSRUNASUSER;;
}
dimension: MAXIMUMPERMISSIONSSUBSCRIBETOLIGHTNINGDASHBOARDS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSSUBSCRIBETOLIGHTNINGDASHBOARDS;;
}
dimension: MAXIMUMPERMISSIONSSUBSCRIBEDASHBOARDTOOTHERUSERS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSSUBSCRIBEDASHBOARDTOOTHERUSERS;;
}
dimension: MAXIMUMPERMISSIONSCREATELTNGTEMPINPUB {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCREATELTNGTEMPINPUB;;
}
dimension: MAXIMUMPERMISSIONSAPEXRESTSERVICES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSAPEXRESTSERVICES;;
}
dimension: MAXIMUMPERMISSIONSENABLECOMMUNITYAPPLAUNCHER {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSENABLECOMMUNITYAPPLAUNCHER;;
}
dimension: MAXIMUMPERMISSIONSGIVERECOGNITIONBADGE {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSGIVERECOGNITIONBADGE;;
}
dimension: MAXIMUMPERMISSIONSLTNGPROMORESERVED01USERPERM {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSLTNGPROMORESERVED01USERPERM;;
}
dimension: MAXIMUMPERMISSIONSCANEDITDATAPREPRECIPE {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCANEDITDATAPREPRECIPE;;
}
dimension: MAXIMUMPERMISSIONSADDANALYTICSREMOTECONNECTIONS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSADDANALYTICSREMOTECONNECTIONS;;
}
dimension: MAXIMUMPERMISSIONSMANAGESURVEYS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMANAGESURVEYS;;
}
dimension: MAXIMUMPERMISSIONSRECORDVISIBILITYAPI {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSRECORDVISIBILITYAPI;;
}
dimension: MAXIMUMPERMISSIONSVIEWROLES {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSVIEWROLES;;
}
dimension: MAXIMUMPERMISSIONSCANMANAGEMAPS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSCANMANAGEMAPS;;
}
dimension: MAXIMUMPERMISSIONSSTORYONDSWITHPREDICATE {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSSTORYONDSWITHPREDICATE;;
}
dimension: MAXIMUMPERMISSIONSPRIVACYDATAACCESS {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSPRIVACYDATAACCESS;;
}
dimension: MAXIMUMPERMISSIONSMODIFYMETADATA {
 type: string
 sql: ${TABLE}.MAXIMUMPERMISSIONSMODIFYMETADATA;;
}
dimension: USEDLICENSES {
 type: string
 sql: ${TABLE}.USEDLICENSES;;
}
}