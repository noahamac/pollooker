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
    hidden: yes
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
    hidden: yes
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
    label: "Pollster Grade"
    description: "Grade assigned by 538's 2020 pollster review"
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

  dimension: mugshot_link {
    type: string
    hidden: yes
    sql: CASE
        WHEN ${campaign} = "Biden" THEN 'https://i.ibb.co/C8T5sQT/TOC-BIDEN-4x3.png'
        WHEN ${campaign} = "Buttigieg" THEN 'https://i.ibb.co/Mnf4KkB/TOC-buttigieg-4x3.png'
        WHEN ${campaign} = "Warren" THEN 'https://i.ibb.co/tcHztZw/TOC-WARREN-4x3.png'
        WHEN ${campaign} = "Sanders" THEN 'https://i.ibb.co/2kqNGLQ/TOC-SANDERS-4x3.png'
        WHEN ${campaign} = "Yang" THEN 'https://i.ibb.co/ykJzzn0/TOC-YANG-4x3.png'
        WHEN ${campaign} = "Harris" THEN 'https://i.ibb.co/Tw9pySR/TOC-HARRIS-4x3.png'
        WHEN ${campaign} = "Klobuchar" THEN 'https://i.ibb.co/kKwvmwS/TOC-KLOBUCHAR-4x3.png'
        WHEN ${campaign} = "Castro" THEN 'https://i.ibb.co/17X706K/TOC-CASTRO-4x3.png'
        WHEN ${campaign} = "Booker" THEN 'https://i.ibb.co/PF4TYRs/TOC-BOOKER-4x3.png'
        WHEN ${campaign} = "Gabbard" THEN 'https://i.ibb.co/984cBR7/TOC-GABBARD-4x3.png'
        WHEN ${campaign} = "Steyer" THEN 'https://i.ibb.co/VQFDNq5/TOC-STEYER-4x3.png'
        WHEN ${campaign} = "Patrick" THEN 'https://i.ibb.co/Y3yCJhh/TOC-DEVALPATRICK-4x3.png'
        END ;;
  }

  dimension: mugshot {
    type: string
    label: "Picture"
    sql: ${mugshot_link};;
    html: <img src="{{value}}" width="200px"/> ;;
  }

#   dimension: wiki_link {
#     type: string
#     sql: CASE
#         WHEN ${campaign} = "Biden" THEN 'Joe_Biden'
#         WHEN ${campaign} = "Buttigieg" THEN 'Pete_Buttigieg'
#         WHEN ${campaign} = "Warren" THEN 'Elizabeth_Warren'
#         WHEN ${campaign} = "Sanders" THEN 'Bernie_Sanders'
#         END ;;
#   }

#   dimension: wiki {
#     type: string
#     sql: ${wiki_link};;
#     html: <img src="http://webthumb.bluga.net/easythumb.php?user=79569&url=https://en.wikipedia.org/wiki/Pete_Buttigieg&hash=b8f5cb59ca9553c4770660263323ebde&size=medium&cache=1" width="200px"/> ;;
#   }

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
    hidden: yes
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
    hidden: yes
  }

  dimension: poll_id {
    type: number
    sql: ${TABLE}.poll_id ;;
  }

  dimension: pollster {
    label: "Pollster Name"
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
    description: "[av, lv, rv, v]"
    type: string
    sql: ${TABLE}.population ;;
  }

  dimension: population_full {
    label: "Population and Party"
    description: "[av, lv, rv, v]-[d,r]"
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
    label: "Sample & Population"
    type: string
    sql: CONCAT(CAST(${sample_size} as CHAR), " ", ${population_full}) ;;
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
    hidden: yes
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
    description: "Capital acronyms (AZ, GA, CA), For National polls, filter: state is blank."
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
    description: "Link to full poll report, more information and cross tabs found here."
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
    type: number
    sql: ${sample_size} ;;
  }
  measure: days_since_poll {
    type: number
    sql: DATEDIFF(${end_date_date}, now()) ;;
  }
  measure: polling_pct {
    label: "All Polling Average"
    type: average
    sql: ${pct} ;;
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
  measure: few_polls_null {
    sql: CASE
        WHEN ${count_polls} < 4 THEN null
        ELSE ${count_polls}
        END ;;
  }
}
