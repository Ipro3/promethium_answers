
connection:"pmdevpresto"


explore: monthly_revenue__c7fc6310_2ee1_430a_aab3_ce142becdc08 {

join: STREAMINGCHANNEL__14931b21_4954_4905_a7ba_6e780a4c169b {
 relationship: one_to_one
 sql_on: ${monthly_revenue__c7fc6310_2ee1_430a_aab3_ce142becdc08.Plan_Name} = ${STREAMINGCHANNEL__14931b21_4954_4905_a7ba_6e780a4c169b.CREATEDBYID} ;;
}
join: dim_agent_csv__f7ed4d8e_8449_47b6_b89e_59a24264e5e4 {
 relationship: one_to_one
 sql_on: ${monthly_revenue__c7fc6310_2ee1_430a_aab3_ce142becdc08.Disc} = ${dim_agent_csv__f7ed4d8e_8449_47b6_b89e_59a24264e5e4.col4} ;;
}
}


view: STREAMINGCHANNEL__14931b21_4954_4905_a7ba_6e780a4c169b {
sql_table_name:sforce.SFORCE.STREAMINGCHANNEL ;;
dimension: ID {
 sql: ${TABLE}.ID;;
}
dimension: OWNERID {
 sql: ${TABLE}.OWNERID;;
}
dimension: ISDELETED {
 sql: ${TABLE}.ISDELETED;;
}
dimension: NAME {
 sql: ${TABLE}.NAME;;
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
dimension: LASTVIEWEDDATE {
 sql: ${TABLE}.LASTVIEWEDDATE;;
}
dimension: LASTREFERENCEDDATE {
 sql: ${TABLE}.LASTREFERENCEDDATE;;
}
dimension: ISDYNAMIC {
 sql: ${TABLE}.ISDYNAMIC;;
}
dimension: DESCRIPTION {
 sql: ${TABLE}.DESCRIPTION;;
}
}


view: dim_agent_csv__f7ed4d8e_8449_47b6_b89e_59a24264e5e4 {
sql_table_name:hive.s3dsqa1.dim_agent_csv ;;
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


view: monthly_revenue__c7fc6310_2ee1_430a_aab3_ce142becdc08 {
sql_table_name:promethium.promethium.monthly_revenue ;;
measure: Plan_ID {
type:count_distinct
 sql: ${TABLE}.Plan_ID;;
}
dimension: Plan_Name {
 sql: ${TABLE}.Plan_Name;;
}
measure: MER {
type:count_distinct
 sql: ${TABLE}.MER;;
}
dimension: Disc {
 sql: ${TABLE}.Disc;;
}
dimension: Package {
 sql: ${TABLE}.Package;;
}
dimension: Len {
 sql: ${TABLE}.Len;;
}
dimension: Rollup1 {
 sql: ${TABLE}.Rollup1;;
}
dimension: ASP {
 sql: ${TABLE}.ASP;;
}
dimension: Startdate {
 sql: ${TABLE}.Startdate;;
}
dimension: enddate {
 sql: ${TABLE}.enddate;;
}
}