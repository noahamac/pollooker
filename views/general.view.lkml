view: general {
  sql_table_name: pollooker.`general` ;;

  dimension: campaign {
    type: string
    sql: ${TABLE}.answer ;;
  }

  dimension: candidate_name {
    type: string
    sql: ${TABLE}.candidate_name ;;
  }

  dimension: candidate_party {
    type: string
    sql: ${TABLE}.candidate_party ;;
  }

  dimension_group: created_at {
    label: "Published"
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

  dimension: election_date {
    type: string
    sql: ${TABLE}.election_date ;;
  }

  dimension_group: end_date {
    label: "Poll Close"
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
    primary_key: yes
    type: number
    sql: ${TABLE}.question_id ;;
  }

  dimension: ranked_choice_reallocated {
    type: string
    sql: ${TABLE}.ranked_choice_reallocated ;;
  }

  dimension: sample_size {
    type: number
    sql: ${TABLE}.sample_size ;;
  }

  dimension: seat_name {
    type: string
    sql: ${TABLE}.seat_name ;;
  }

  dimension: seat_number {
    type: number
    sql: ${TABLE}.seat_number ;;
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
    label: "Poll Open"
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
    drill_fields: [seat_name, candidate_name, display_name, pollster_rating_name]
  }
  measure: polling_pct {
    label: "All Polling Average"
    type: average
    sql: ${pct} ;;
    value_format: "0.00\%"
    drill_fields: [candidate_name, pollster_rating_name, display_name, start_date_raw, end_date_raw]
  }
  measure: ntl_polling_pct {
    label: "National"
    type: average
    group_label: "State Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "EMPTY"
    }
    value_format: "0.00\%"
  }
  measure: es_polling_pct {
    label: "Early State"
    type: average
    group_label: "State Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "Iowa, New Hampshire, South Carolina, Nevada"
    }
    value_format: "0.00\%"
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
    value_format: "0.00\%"
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
    value_format: "0.00\%"
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
    value_format: "0.00\%"
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
    value_format: "0.00\%"
  }
  measure: trump_polling_pct {
    label: "Trump Polling Average"
    type: average
    group_label: "Campaign Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: campaign
      value: "Trump"
    }
    value_format: "0.00\%"
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
    value_format: "0.00\%"
  }
  measure: steyer_polling_pct {
    label: "Steyer Polling Average"
    type: average
    group_label: "Campaign Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: campaign
      value: "Steyer"
    }
    value_format: "0.00\%"
  }
  measure: bloomberg_polling_pct {
    label: "Bloomberg Polling Average"
    type: average
    group_label: "Campaign Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: campaign
      value: "Bloomberg"
    }
    value_format: "0.00\%"
  }
  measure: klobuchar_polling_pct {
    label: "Klobuchar Polling Average"
    type: average
    group_label: "Campaign Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: campaign
      value: "Klobuchar"
    }
    value_format: "0.00\%"
  }
  measure: yang_polling_pct {
    label: "Yang Polling Average"
    type: average
    group_label: "Campaign Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: campaign
      value: "Yang"
    }
    value_format: "0.00\%"
  }
  measure: gabbard_polling_pct {
    label: "Gabbard Polling Average"
    type: average
    group_label: "Campaign Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: campaign
      value: "Gabbard"
    }
    value_format: "0.00\%"
  }
  measure: booker_polling_pct {
    label: "Booker Polling Average"
    type: average
    group_label: "Campaign Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: campaign
      value: "Booker"
    }
    value_format: "0.00\%"
  }
  measure: ia_polling_pct {
    label: "Iowa"
    type: average
    group_label: "State Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "Iowa"
    }
    value_format: "0.00\%"
  }
  measure: nv_polling_pct {
    label: "Nevada"
    type: average
    group_label: "State Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "Nevada"
    }
    value_format: "0.00\%"
  }
  measure: fl_polling_pct {
    label: "Florida"
    type: average
    group_label: "State Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "Florida"
    }
    value_format: "0.00\%"
  }
  measure: tx_polling_pct {
    label: "Texas"
    type: average
    group_label: "State Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "Texas"
    }
    value_format: "0.00\%"
  }
  measure: nh_polling_pct {
    label: "New Hampshire"
    type: average
    group_label: "State Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "New Hampshire"
    }
    value_format: "0.00\%"
  }
  measure: ca_polling_pct {
    label: "California"
    type: average
    group_label: "State Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "California"
    }
    value_format: "0.00\%"
  }
  measure: sc_polling_pct {
    label: "South Carolina"
    type: average
    group_label: "State Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "South Carolina"
    }
    value_format: "0.00\%"
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
    value_format: "0.00\%"
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
    value_format: "0.00\%"
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
    value_format: "0.00\%"
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
    value_format: "0.00\%"
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
    value_format: "0.00\%"
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
    value_format: "0.00\%"
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
    value_format: "0.00\%"
  }
}

# If necessary, uncomment the line below to include explore_source.
# include: "pollooker.model.lkml"

view: general_rollup {
  derived_table: {
    explore_source: general {
      column: state {}
      column: start_date_date {}
      column: end_date_date {}
      column: pollster {}
      column: biden_polling_pct {}
      column: buttigieg_polling_pct {}
      column: bloomberg_polling_pct {}
      column: klobuchar_polling_pct {}
      column: sanders_polling_pct {}
      column: warren_polling_pct {}
      column: trump_polling_pct {}
      column: question_id {}
    }
  }
  dimension: state {}
  dimension_group: start_date_date {
    label: "Start Date"
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
  }
  dimension_group: end_date_date {
    label: "End Date"
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
  }
  dimension: pollster {}
  measure: biden_polling_pct {
    label: "General Biden Polling Average"
    value_format: "0.00\%"
    type: average
    drill_fields: [state, biden_polling_pct, pollster, start_date_date_date, start_date_date_date]
  }
  measure: buttigieg_polling_pct {
    label: "General Buttigieg Polling Average"
    value_format: "0.00\%"
    type: average
    drill_fields: [state, buttigieg_polling_pct, pollster, start_date_date_date, start_date_date_date]
  }
  measure: bloomberg_polling_pct {
    label: "General Bloomberg Polling Average"
    value_format: "0.00\%"
    type: average
    drill_fields: [state, bloomberg_polling_pct, pollster, start_date_date_date, start_date_date_date]
  }
  measure: klobuchar_polling_pct {
    label: "General Klobuchar Polling Average"
    value_format: "0.00\%"
    drill_fields: [state, klobuchar_polling_pct, pollster, start_date_date_date, start_date_date_date]
    type: average
  }
  measure: sanders_polling_pct {
    label: "General Sanders Polling Average"
    value_format: "0.00\%"
    type: average
    drill_fields: [state, sanders_polling_pct, pollster, start_date_date_date, start_date_date_date]
  }
  measure: warren_polling_pct {
    label: "General Warren Polling Average"
    value_format: "0.00\%"
    type: average
    drill_fields: [state, warren_polling_pct, pollster, start_date_date_date, start_date_date_date]
  }
  measure: trump_polling_pct {
    label: "General Trump Polling Average"
    value_format: "0.00\%"
    type: average
    drill_fields: [state, trump_polling_pct, pollster, start_date_date_date, start_date_date_date]
  }
  dimension: question_id {
    type: number
  }
}
