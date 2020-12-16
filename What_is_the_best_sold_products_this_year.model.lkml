
connection:"presto-qa-1"


explore: OLIST_ORDER_ITEMS_DATASET__6e8e1b9f_b272_47d3_ae92_ff5b2ba52454 {

}


view: PRICEBOOKENTRY__098247f0_004f_43df_83b6_0b71b839325c {
sql_table_name:sforce.SFORCE.PRICEBOOKENTRY ;;
dimension: ID {
  sql: ${TABLE}.ID;;
}
dimension: NAME {
  sql: ${TABLE}.NAME;;
}
dimension: PRICEBOOK2ID {
  sql: ${TABLE}.PRICEBOOK2ID;;
}
dimension: PRODUCT2ID {
  sql: ${TABLE}.PRODUCT2ID;;
}
dimension: UNITPRICE {
  sql: ${TABLE}.UNITPRICE;;
}
dimension: ISACTIVE {
  sql: ${TABLE}.ISACTIVE;;
}
dimension: USESTANDARDPRICE {
  sql: ${TABLE}.USESTANDARDPRICE;;
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
dimension: PRODUCTCODE {
  sql: ${TABLE}.PRODUCTCODE;;
}
dimension: ISDELETED {
  sql: ${TABLE}.ISDELETED;;
}
dimension: ISARCHIVED {
  sql: ${TABLE}.ISARCHIVED;;
}
measure: UNITPRICE_sum {
type:sum
sql: ${UNITPRICE} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [ID, NAME, PRICEBOOK2ID, PRODUCT2ID, UNITPRICE, ISACTIVE, USESTANDARDPRICE, CREATEDDATE, CREATEDBYID, LASTMODIFIEDDATE, LASTMODIFIEDBYID, SYSTEMMODSTAMP, PRODUCTCODE, ISDELETED, ISARCHIVED]
}
}


view: OLIST_ORDER_ITEMS_DATASET__6e8e1b9f_b272_47d3_ae92_ff5b2ba52454 {
sql_table_name:oracle.RDSOracleForPresto.OLIST_ORDER_ITEMS_DATASET ;;
dimension: ORDER_ID {
  sql: ${TABLE}.ORDER_ID;;
}
dimension: ORDER_ITEM_ID {
  sql: ${TABLE}.ORDER_ITEM_ID;;
}
dimension: PRODUCT_ID {
  sql: ${TABLE}.PRODUCT_ID;;
}
dimension: SELLER_ID {
  sql: ${TABLE}.SELLER_ID;;
}
dimension: SHIPPING_LIMIT_DATE {
  sql: ${TABLE}.SHIPPING_LIMIT_DATE;;
}
dimension: PRICE {
  sql: ${TABLE}.PRICE;;
}
dimension: FREIGHT_VALUE {
  sql: ${TABLE}.FREIGHT_VALUE;;
}
measure: ORDER_ITEM_ID_sum {
type:sum
sql: ${ORDER_ITEM_ID} ;;
 drill_fields: [detail*]
}
measure: PRICE_sum {
type:sum
sql: ${PRICE} ;;
 drill_fields: [detail*]
}
measure: FREIGHT_VALUE_sum {
type:sum
sql: ${FREIGHT_VALUE} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [ORDER_ID, ORDER_ITEM_ID, PRODUCT_ID, SELLER_ID, SHIPPING_LIMIT_DATE, PRICE, FREIGHT_VALUE]
}
}