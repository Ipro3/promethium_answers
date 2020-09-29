
connection: "pmdevpresto"


explore: CONTRACT__3d3abae4_a471_4e40_9482_d3b8206da0b8 {

join: Orders__01ff06bf_5291_44dd_9c8a_42500a7f2292 {
 relationship: one_to_one
 sql_on: ${Orders__01ff06bf_5291_44dd_9c8a_42500a7f2292.Orders.order_id} = ${CONTRACT__3d3abae4_a471_4e40_9482_d3b8206da0b8.CONTRACT.CONTRACTTERM} ;;
}
join: pharma_sales_fact__f01a1295_b71d_407a_9e0c_825bcc9bfd79 {
 relationship: one_to_one
 sql_on: ${CONTRACT__3d3abae4_a471_4e40_9482_d3b8206da0b8.CONTRACT.CONTRACTTERM} = ${pharma_sales_fact__f01a1295_b71d_407a_9e0c_825bcc9bfd79.pharma_sales_fact.customer_id} ;;
}
}


view: CONTRACT__3d3abae4_a471_4e40_9482_d3b8206da0b8 {
sql_table_name:sforce_direct.SFORCE.CONTRACT ;;
dimension: ID {
 type: string
 sql: ${TABLE}.ID;;
}
dimension: ACCOUNTID {
 type: string
 sql: ${TABLE}.ACCOUNTID;;
}
dimension: PRICEBOOK2ID {
 type: string
 sql: ${TABLE}.PRICEBOOK2ID;;
}
dimension: OWNEREXPIRATIONNOTICE {
 type: string
 sql: ${TABLE}.OWNEREXPIRATIONNOTICE;;
}
dimension: STARTDATE {
 type: string
 sql: ${TABLE}.STARTDATE;;
}
dimension: ENDDATE {
 type: string
 sql: ${TABLE}.ENDDATE;;
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
dimension: CONTRACTTERM {
 type: string
 sql: ${TABLE}.CONTRACTTERM;;
}
dimension: OWNERID {
 type: string
 sql: ${TABLE}.OWNERID;;
}
dimension: STATUS {
 type: string
 sql: ${TABLE}.STATUS;;
}
dimension: COMPANYSIGNEDID {
 type: string
 sql: ${TABLE}.COMPANYSIGNEDID;;
}
dimension: COMPANYSIGNEDDATE {
 type: string
 sql: ${TABLE}.COMPANYSIGNEDDATE;;
}
dimension: CUSTOMERSIGNEDID {
 type: string
 sql: ${TABLE}.CUSTOMERSIGNEDID;;
}
dimension: CUSTOMERSIGNEDTITLE {
 type: string
 sql: ${TABLE}.CUSTOMERSIGNEDTITLE;;
}
dimension: CUSTOMERSIGNEDDATE {
 type: string
 sql: ${TABLE}.CUSTOMERSIGNEDDATE;;
}
dimension: SPECIALTERMS {
 type: string
 sql: ${TABLE}.SPECIALTERMS;;
}
dimension: ACTIVATEDBYID {
 type: string
 sql: ${TABLE}.ACTIVATEDBYID;;
}
dimension: ACTIVATEDDATE {
 type: string
 sql: ${TABLE}.ACTIVATEDDATE;;
}
dimension: STATUSCODE {
 type: string
 sql: ${TABLE}.STATUSCODE;;
}
dimension: DESCRIPTION {
 type: string
 sql: ${TABLE}.DESCRIPTION;;
}
dimension: ISDELETED {
 type: string
 sql: ${TABLE}.ISDELETED;;
}
dimension: CONTRACTNUMBER {
 type: string
 sql: ${TABLE}.CONTRACTNUMBER;;
}
dimension: LASTAPPROVEDDATE {
 type: string
 sql: ${TABLE}.LASTAPPROVEDDATE;;
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
}


view: pharma_sales_fact__f01a1295_b71d_407a_9e0c_825bcc9bfd79 {
sql_table_name:ds_mysql.promethium.pharma_sales_fact ;;
dimension: fact_id {
 type: string
 sql: ${TABLE}.fact_id;;
}
dimension: customer_id {
 type: string
 sql: ${TABLE}.customer_id;;
}
dimension: day_number {
 type: string
 sql: ${TABLE}.day_number;;
}
dimension: geographic_area {
 type: string
 sql: ${TABLE}.geographic_area;;
}
dimension: product_code {
 type: string
 sql: ${TABLE}.product_code;;
}
dimension: sales_amount {
 type: string
 sql: ${TABLE}.sales_amount;;
}
dimension: sales_volume {
 type: string
 sql: ${TABLE}.sales_volume;;
}
dimension: other_sales_details {
 type: string
 sql: ${TABLE}.other_sales_details;;
}
}


view: Orders__01ff06bf_5291_44dd_9c8a_42500a7f2292 {
sql_table_name:ds_mysql.promethium.Orders ;;
dimension: order_id {
 type: string
 sql: ${TABLE}.order_id;;
}
dimension: customer_id {
 type: string
 sql: ${TABLE}.customer_id;;
}
dimension: order_status_code {
 type: string
 sql: ${TABLE}.order_status_code;;
}
dimension: order_details {
 type: string
 sql: ${TABLE}.order_details;;
}
}