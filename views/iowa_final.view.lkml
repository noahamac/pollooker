view: iowa_final {
  sql_table_name: pollooker.iowa_final ;;

  dimension: candidate {
    type: string
    sql: ${TABLE}.candidate ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: final_exp {
    type: number
    sql: ${TABLE}.final_exp ;;
  }

  measure: final {
    type: sum
    sql: ${final_exp} ;;
  }

  dimension: first_exp {
    type: number
    sql: ${TABLE}.first_exp ;;
  }

  measure: first {
    type: sum
    sql: ${first_exp} ;;
  }

  dimension: precinct {
    type: string
    sql: ${TABLE}.precinct ;;
  }

  dimension: sde {
    type: string
    sql: ${TABLE}.sde ;;
    value_format_name: decimal_1
  }

  measure: delegates {
    type: sum
    sql: ${sde} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
