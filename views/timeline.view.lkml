view: timeline {
  sql_table_name: playground.playground ;;

  dimension: date {
    type: string
    sql: ${TABLE}.Date ;;
    primary_key: yes
  }

  measure: count {
    type: count
    drill_fields: []
  }

}
