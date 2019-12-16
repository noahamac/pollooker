view: contributions {
  sql_table_name: pollooker.contributions ;;

  dimension: amndt_ind {
    type: string
    sql: ${TABLE}.AMNDT_IND ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: cmte_id {
    type: string
    sql: ${TABLE}.CMTE_ID ;;
  }

  dimension: employer {
    type: string
    sql: ${TABLE}.EMPLOYER ;;
  }

  dimension: entity_tp {
    type: string
    sql: ${TABLE}.ENTITY_TP ;;
  }

  dimension: file_num {
    type: number
    sql: ${TABLE}.FILE_NUM ;;
  }

  dimension: image_num {
    type: number
    sql: ${TABLE}.IMAGE_NUM ;;
  }

  dimension: memo_cd {
    type: string
    sql: ${TABLE}.MEMO_CD ;;
  }

  dimension: memo_text {
    type: string
    sql: ${TABLE}.MEMO_TEXT ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: occupation {
    type: string
    sql: ${TABLE}.OCCUPATION ;;
  }

  dimension: other_id {
    type: string
    sql: ${TABLE}.OTHER_ID ;;
  }

  dimension: rpt_tp {
    type: string
    sql: ${TABLE}.RPT_TP ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
  }

  dimension: tran_id {
    type: string
    sql: ${TABLE}.TRAN_ID ;;
  }

  dimension: transaction_amt {
    type: number
    sql: ${TABLE}.TRANSACTION_AMT ;;
  }

  dimension: transaction_dt {
    type: string
    sql: ${TABLE}.TRANSACTION_DT ;;
  }

  dimension: transaction_pgi {
    type: string
    sql: ${TABLE}.TRANSACTION_PGI ;;
  }

  dimension: transaction_tp {
    type: string
    sql: ${TABLE}.TRANSACTION_TP ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.ZIP_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
