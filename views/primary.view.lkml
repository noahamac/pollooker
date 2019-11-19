view: primary {
  sql_table_name: pollooker.`primary` ;;

  dimension: campaign {
    type: string
    description: "Last names: Biden, Warren, Sanders, Buttigieg, Harris, Yang, Klobuchar, etc"
    sql: ${TABLE}.answer ;;
  }

  dimension: candidate_name {
    type: string
    sql: ${TABLE}.candidate_name ;;
    hidden: yes
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
    hidden: yes
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
    hidden: yes
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
    hidden: yes
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
    hidden: yes
  }

  dimension: partisan {
    type: string
    sql: ${TABLE}.partisan ;;
    hidden: yes
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
    hidden: yes
  }

  dimension: pollster_rating_name {
    type: string
    sql: ${TABLE}.pollster_rating_name ;;
    hidden: yes
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
    hidden: yes
  }

  dimension: sample_size {
    type: number
    sql: ${TABLE}.sample_size ;;
  }

  dimension: pool {
    type: number
    sql: CONCAT(CAST(${sample_size} as CHAR),${population_full}) ;;
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
    hidden: yes
  }

  dimension: sponsor_ids {
    type: string
    sql: ${TABLE}.sponsor_ids ;;
    hidden: yes
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
    hidden: yes
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count_polls {
    type: count_distinct
    sql: ${poll_id} ;;
    drill_fields: [candidate_name, pollster_rating_name, display_name]
  }

  measure: total_sample {
    label: "Estimated Sample Size"
    type: sum
    sql: ${sample_size} ;;
  }

  measure: polling_pct {
    label: "All Polling Average"
    type: average
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, display_name, start_date_raw, end_date_raw]
  }
  measure: ntl_polling_pct {
    label: "National Polling Average"
    type: average
    group_label: "State Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: EMPTY
    }
  }
  measure: buttigieg_polling_pct {
    label: "Buttigieg Polling Average"
    type: average
    group_label: "Campaign Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: campaign
      value: "Buttigieg"
    }
  }
  measure: biden_polling_pct {
    label: "Biden Polling Average"
    type: average
    group_label: "Campaign Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: campaign
      value: "Biden"
    }
  }
  measure: warren_polling_pct {
    label: "Warren Polling Average"
    type: average
    group_label: "Campaign Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: campaign
      value: "Warren"
    }
  }
  measure: sanders_polling_pct {
    label: "Sanders Polling Average"
    type: average
    group_label: "Campaign Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: campaign
      value: "Sanders"
    }
  }
  measure: harris_polling_pct {
    label: "Harris Polling Average"
    type: average
    group_label: "Campaign Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: campaign
      value: "Harris"
    }
  }
  measure: ia_polling_pct {
    label: "Iowa Polling Average"
    type: average
    group_label: "State Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "Iowa"
    }
  }
  measure: nv_polling_pct {
    label: "Nevada Polling Average"
    type: average
    group_label: "State Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "Nevada"
    }
  }
  measure: fl_polling_pct {
    label: "Florida Polling Average"
    type: average
    group_label: "State Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "Florida"
    }
  }
  measure: tx_polling_pct {
    label: "Texas Polling Average"
    type: average
    group_label: "State Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "Texas"
    }
  }
  measure: nh_polling_pct {
    label: "New Hampshire Polling Average"
    type: average
    group_label: "State Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "New Hampshire"
    }
  }
  measure: ca_polling_pct {
    label: "California Polling Average"
    type: average
    group_label: "State Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "California"
    }
  }
  measure: sc_polling_pct {
    label: "South Carolina Polling Average"
    type: average
    group_label: "State Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "South Carolina"
    }
  }
  measure: may_polling {
    label: "May 2019 Polling Average"
    type: average
    group_label: "Monthly Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: start_date_month_num
      value: "5"
    }
  }
  measure: june_polling {
    label: "June 2019 Polling Average"
    type: average
    group_label: "Monthly Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: start_date_month_num
      value: "6"
    }
  }
  measure: july_polling {
    label: "July 2019 Polling Average"
    type: average
    group_label: "Monthly Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: start_date_month_num
      value: "7"
    }
  }
  measure: aug_polling {
    label: "August 2019 Polling Average"
    type: average
    group_label: "Monthly Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: start_date_month_num
      value: "8"
    }
  }
  measure: sept_polling {
    label: "Sept 2019 Polling Average"
    type: average
    group_label: "Monthly Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: start_date_month_num
      value: "9"
    }
  }
  measure: oct_polling {
    label: "Oct 2019 Polling Average"
    type: average
    group_label: "Monthly Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: start_date_month_num
      value: "10"
    }
  }
  measure: nov_polling {
    label: "Nov 2019 Polling Average"
    type: average
    group_label: "Monthly Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: start_date_month_num
      value: "11"
    }
  }
}
