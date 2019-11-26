view: timeline {
  sql_table_name: playground.playground ;;

  dimension: date {
    type: string
    sql: ${TABLE}.Date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
