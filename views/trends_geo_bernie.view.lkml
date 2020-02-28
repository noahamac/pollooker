view: trends_geo_bernie {
  sql_table_name: pollooker.trends_geo_bernie ;;

  measure: bernie_sanders22419__22420 {
    label: "Sanders State Google Index"
    view_label: "Primary"
    type: average
    sql: ${TABLE}.`bernie sanders(2/24/19 - 2/24/20)` ;;
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
