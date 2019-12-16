view: committees {
  sql_table_name: pollooker.committees ;;

  dimension: cand_id {
    type: string
    sql: ${TABLE}.CAND_ID ;;
  }

  dimension: cmte_city {
    type: string
    sql: ${TABLE}.CMTE_CITY ;;
  }

  dimension: cmte_dsgn {
    type: string
    sql: ${TABLE}.CMTE_DSGN ;;
  }

  dimension: cmte_filing_freq {
    type: string
    sql: ${TABLE}.CMTE_FILING_FREQ ;;
  }

  dimension: cmte_id {
    type: string
    sql: ${TABLE}.CMTE_ID ;;
  }

  dimension: cmte_nm {
    type: string
    sql: ${TABLE}.CMTE_NM ;;
  }

  dimension: cmte_pty_affiliation {
    type: string
    sql: ${TABLE}.CMTE_PTY_AFFILIATION ;;
  }

  dimension: cmte_st {
    type: string
    sql: ${TABLE}.CMTE_ST ;;
  }

  dimension: cmte_st1 {
    type: string
    sql: ${TABLE}.CMTE_ST1 ;;
  }

  dimension: cmte_st2 {
    type: string
    sql: ${TABLE}.CMTE_ST2 ;;
  }

  dimension: cmte_tp {
    type: string
    sql: ${TABLE}.CMTE_TP ;;
  }

  dimension: cmte_zip {
    type: string
    sql: ${TABLE}.CMTE_ZIP ;;
  }

  dimension: connected_org_nm {
    type: string
    sql: ${TABLE}.CONNECTED_ORG_NM ;;
  }

  dimension: org_tp {
    type: string
    sql: ${TABLE}.ORG_TP ;;
  }

  dimension: tres_nm {
    type: string
    sql: ${TABLE}.TRES_NM ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
