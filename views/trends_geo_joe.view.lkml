view: trends_geo_joe {
  sql_table_name: pollooker.trends_geo_joe ;;

  measure: joe_biden_22419__22420 {
    label: "Biden State Google Index"
    view_label: "Primary"
    type: average
    sql: ${TABLE}.`joe biden: (2/24/19 - 2/24/20)`
      ;;
  }

  dimension: region {
    hidden: yes
    type: string
    sql: ${TABLE}.Region ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
