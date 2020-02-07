view: results {
  sql_table_name: pollooker.results ;;

  dimension: cdes_pete {
    type: string
    sql: ${TABLE}.`CDEs (Pete)` ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension: first_alignment_pete {
    type: string
    sql: ${TABLE}.`First Alignment (Pete)` ;;
  }

  dimension: precinct_name {
    type: string
    sql: ${TABLE}.`Precinct Name` ;;
  }

  dimension: sdes_converted_from_cdes {
    type: string
    sql: ${TABLE}.`SDEs (Converted from CDEs)` ;;
  }

  dimension: second_alignment_pete {
    type: number
    sql: ${TABLE}.`Second Alignment (Pete)` ;;
  }

  dimension: turnout {
    type: number
    sql: ${TABLE}.Turnout ;;
  }

  measure: count {
    type: count
    drill_fields: [precinct_name]
  }
  measure: first_alignment {
    type: sum
    sql: ${first_alignment_pete} ;;
    drill_fields: [precinct_name]
  }
  measure: second_alignment {
    type: sum
    sql: ${second_alignment_pete} ;;
    drill_fields: [precinct_name]
  }
  measure: turnout_sum {
    type: sum
    sql: ${turnout} ;;
    drill_fields: [precinct_name]
  }
  measure: first_pct {
    type: number
    sql: ${first_alignment}/${turnout} ;;
    drill_fields: [precinct_name]
  }
  measure: second_pct {
    type: number
    sql: ${second_alignment}/${turnout} ;;
    drill_fields: [precinct_name]
  }
}
