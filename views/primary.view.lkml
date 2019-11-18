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
    description: "Grade assigned by 538's 2020 Pollster review"
    type: string
    sql: ${TABLE}.fte_grade ;;
  }

  dimension: grade_bucket {
    sql: CASE
        WHEN ${fte_grade} = "A" THEN 'A'
        WHEN ${fte_grade} = "A-" THEN 'A'
        WHEN ${fte_grade} = "A+" THEN 'A'
        WHEN ${fte_grade} = "B" THEN 'B'
        WHEN ${fte_grade} = "B-" THEN 'B'
        WHEN ${fte_grade} = "B+" THEN 'B'
        WHEN ${fte_grade} = "C" THEN 'C'
        WHEN ${fte_grade} = "C-" THEN 'C'
        WHEN ${fte_grade} = "C+" THEN 'C'
        WHEN ${fte_grade} = "D" THEN 'D'
        WHEN ${fte_grade} = "D-" THEN 'D'
        WHEN ${fte_grade} = "D+" THEN 'D'
        ELSE ${fte_grade}
        END ;;
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

  dimension: sample_size_bucket {
    type: tier
    tiers: [200, 400, 800, 1000]
    style: integer
    sql: ${sample_size} ;;
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

  measure: total_sample {
    type: sum
    sql: ${sample_size} ;;
  }

  measure: polling_pct {
    type: average
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, display_name, start_date_raw, end_date_raw]
  }
  measure: ntl_polling_pct {
    label: "National Polling Average"
    type: average
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: EMPTY
    }
  }
  measure: ia_polling_pct {
    label: "Iowa Polling Average"
    type: average
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "Iowa"
    }
  }
  measure: nh_polling_pct {
    label: "New Hampshire Polling Average"
    type: average
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "New Hampshire"
    }
  }
  measure: ca_polling_pct {
    label: "California Polling Average"
    type: average
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "California"
    }
  }
  measure: sc_polling_pct {
    label: "South Carolina Polling Average"
    type: average
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "South Carolina"
    }
  }
}
