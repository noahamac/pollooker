view: candidates {
  sql_table_name: pollooker.candidates ;;

  dimension: cand_contrib {
    type: string
    sql: ${TABLE}.CAND_CONTRIB ;;
  }

  dimension: cand_ici {
    type: string
    sql: ${TABLE}.CAND_ICI ;;
  }

  dimension: cand_id {
    type: string
    sql: ${TABLE}.CAND_ID ;;
  }

  dimension: cand_loan_repay {
    type: string
    sql: ${TABLE}.CAND_LOAN_REPAY ;;
  }

  dimension: cand_loans {
    type: string
    sql: ${TABLE}.CAND_LOANS ;;
  }

  dimension: cand_name {
    type: string
    sql: ${TABLE}.CAND_NAME ;;
  }

  dimension: cand_office_district {
    type: string
    sql: ${TABLE}.CAND_OFFICE_DISTRICT ;;
  }

  dimension: cand_office_st {
    type: string
    sql: ${TABLE}.CAND_OFFICE_ST ;;
  }

  dimension: cand_pty_affiliation {
    type: string
    sql: ${TABLE}.CAND_PTY_AFFILIATION ;;
  }

  dimension: cmte_refunds {
    type: string
    sql: ${TABLE}.CMTE_REFUNDS ;;
  }

  dimension: coh_bop {
    type: string
    sql: ${TABLE}.COH_BOP ;;
  }

  dimension: coh_cop {
    type: string
    sql: ${TABLE}.COH_COP ;;
  }

  dimension: cvg_end_dt {
    type: string
    sql: ${TABLE}.CVG_END_DT ;;
  }

  dimension: debts_owed_by {
    type: string
    sql: ${TABLE}.DEBTS_OWED_BY ;;
  }

  dimension: gen_election {
    type: string
    sql: ${TABLE}.GEN_ELECTION ;;
  }

  dimension: gen_election_precent {
    type: string
    sql: ${TABLE}.GEN_ELECTION_PRECENT ;;
  }

  dimension: indiv_refunds {
    type: string
    sql: ${TABLE}.INDIV_REFUNDS ;;
  }

  dimension: other_loan_repay {
    type: number
    sql: ${TABLE}.OTHER_LOAN_REPAY ;;
  }

  dimension: other_loans {
    type: string
    sql: ${TABLE}.OTHER_LOANS ;;
  }

  dimension: other_pol_cmte_contrib {
    type: string
    sql: ${TABLE}.OTHER_POL_CMTE_CONTRIB ;;
  }

  dimension: pol_pty_contrib {
    type: string
    sql: ${TABLE}.POL_PTY_CONTRIB ;;
  }

  dimension: prim_election {
    type: string
    sql: ${TABLE}.PRIM_ELECTION ;;
  }

  dimension: pty_cd {
    type: number
    sql: ${TABLE}.PTY_CD ;;
  }

  dimension: run_election {
    type: string
    sql: ${TABLE}.RUN_ELECTION ;;
  }

  dimension: spec_election {
    type: string
    sql: ${TABLE}.SPEC_ELECTION ;;
  }

  dimension: trans_from_auth {
    type: string
    sql: ${TABLE}.TRANS_FROM_AUTH ;;
  }

  dimension: trans_to_auth {
    type: string
    sql: ${TABLE}.TRANS_TO_AUTH ;;
  }

  dimension: ttl_disb {
    type: string
    sql: ${TABLE}.TTL_DISB ;;
  }

  dimension: ttl_indiv_contrib {
    type: string
    sql: ${TABLE}.TTL_INDIV_CONTRIB ;;
  }

  dimension: ttl_receipts {
    type: string
    sql: ${TABLE}.TTL_RECEIPTS ;;
  }

  measure: count {
    type: count
    drill_fields: [cand_name]
  }
}
