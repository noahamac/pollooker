connection: "datapoint"

include: "*.dashboard"

datagroup: pollooker_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: pollooker_default_datagroup

explore: primary {

}

view: primary {
  sql_table_name: pollooker.`primary` ;;

  dimension: campaign {
    type: string
    sql: ${TABLE}.answer ;;
  }

  dimension: candidate_name {
    type: string
    sql: ${TABLE}.candidate_name ;;
  }

  dimension_group: created_at {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_num,
      quarter,
      year
    ]
    sql: STR_TO_DATE(${TABLE}.created_at, '%m/%d/%y %H:%i') ;;
  }

  dimension: cycle {
    type: number
    sql: ${TABLE}.cycle ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension_group: end_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_num,
      quarter,
      year
    ]
    sql: STR_TO_DATE(${TABLE}.end_date, '%m/%d/%y %H:%i') ;;
  }

  dimension: fte_grade {
    label: "Pollster Grade"
    type: string
    sql: ${TABLE}.fte_grade ;;
  }

  dimension: internal {
    type: string
    sql: ${TABLE}.internal ;;
  }

  dimension: methodology {
    type: string
    sql: ${TABLE}.methodology ;;
  }

  dimension: nationwide_batch {
    type: string
    sql: ${TABLE}.nationwide_batch ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: office_type {
    type: string
    sql: ${TABLE}.office_type ;;
  }

  dimension: partisan {
    type: string
    sql: ${TABLE}.partisan ;;
  }

  dimension: party {
    type: string
    sql: ${TABLE}.party ;;
  }

  dimension: pct {
    type: string
    sql: ${TABLE}.pct ;;
  }

  dimension: poll_id {
    type: number
    sql: ${TABLE}.poll_id ;;
  }

  dimension: pollster {
    type: string
    sql: ${TABLE}.pollster ;;
  }

  dimension: pollster_id {
    type: number
    sql: ${TABLE}.pollster_id ;;
  }

  dimension: pollster_rating_id {
    type: number
    sql: ${TABLE}.pollster_rating_id ;;
  }

  dimension: pollster_rating_name {
    type: string
    sql: ${TABLE}.pollster_rating_name ;;
  }

  dimension: population {
    type: string
    sql: ${TABLE}.population ;;
  }

  dimension: population_full {
    type: string
    sql: ${TABLE}.population_full ;;
  }

  dimension: question_id {
    type: number
    sql: ${TABLE}.question_id ;;
  }

  dimension: sample_size {
    type: number
    sql: ${TABLE}.sample_size ;;
  }

  dimension: sponsor_candidate {
    type: string
    sql: ${TABLE}.sponsor_candidate ;;
  }

  dimension: sponsor_ids {
    type: string
    sql: ${TABLE}.sponsor_ids ;;
  }

  dimension: sponsors {
    type: string
    sql: ${TABLE}.sponsors ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}.stage ;;
  }

  dimension_group: start_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_num,
      quarter,
      year
    ]
    sql: STR_TO_DATE(${TABLE}.start_date, '%m/%d/%y %H:%i') ;;
  }

  dimension: state {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.state ;;
  }

  dimension: tracking {
    type: string
    sql: ${TABLE}.tracking ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [candidate_name, pollster_rating_name, display_name]
  }

  measure: count_polls {
    type: count_distinct
    sql: ${poll_id} ;;
    drill_fields: [candidate_name, pollster_rating_name, display_name]
  }

  measure: polling_pct {
    type: number
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, display_name, start_date_raw, end_date_raw]
  }
}

