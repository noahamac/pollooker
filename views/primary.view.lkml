view: primary {
  sql_table_name: pollooker.`primary` ;;


  # Date dimensions
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
#     html: {{rendered_value | date: "%D" }};;
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
    html: {{rendered_value | date: "%D" }};;
  }

  # Poll fact fields
  dimension: state {
    description: "Capital acronyms (AZ, GA, CA), For National polls, filter: state is blank."
    type: string
    map_layer_name: us_states
    sql: CASE
        WHEN "National" THEN ""
        ELSE ${TABLE}.state
        END ;;
  }
  dimension: sponsors {
    type: string
    sql: ${TABLE}.sponsors ;;
  }
  dimension: sample_size_bucket {
    type: tier
    tiers: [200, 400, 800, 1000]
    style: integer
    sql: ${sample_size} ;;
  }
  dimension: pool {
    label: "Sample & Population"
    type: string
    sql: CONCAT(CAST(${sample_size} as CHAR), " ", ${population_full}) ;;
  }
  dimension: sample_size {
    type: number
    sql: ${TABLE}.sample_size ;;
  }
  dimension: cycle {
    type: number
    sql: ${TABLE}.cycle ;;
  }
  dimension: party {
    type: string
    sql: ${TABLE}.party ;;
  }
  dimension: pct {
    type: number
    sql: ${TABLE}.pct ;;
  }
  dimension: pct_round {
    type: number
    sql: CAST(${TABLE}.pct AS DECIMAL(10,0)) ;;
  }
  dimension: pct_tier {
    type: tier
    tiers: [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35]
    style: integer
    sql: ${pct_round} ;;
  }
  dimension: pollster {
    label: "Pollster Name"
    type: string
    sql: ${TABLE}.pollster ;;
  }
  dimension: campaign {
    type: string
    description: "Last names: Biden, Warren, Sanders, Buttigieg, Harris, Yang, Klobuchar, etc"
    sql: ${TABLE}.answer ;;
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
  dimension: mugshot {
    type: string
    label: "Picture"
    sql: ${mugshot_link};;
    html: <img src="{{value}}" width="200px"/> ;;
  }
  dimension: methodology {
    type: string
    sql: ${TABLE}.methodology ;;
  }
  dimension: notes {
    description: "Filter out head-to-head polls"
    type: string
    sql: ${TABLE}.notes ;;
  }

  # Other
  dimension: url {
    description: "Link to full poll report, more information and cross tabs found here."
    type: string
    sql: ${TABLE}.url ;;
    link: {
      label: "Poll Report"
      url: "{{ value }}"
    }
  }
  dimension: tracking {
    type: string
    sql: ${TABLE}.tracking ;;
    hidden: yes
  }
  dimension: stage {
    type: string
    sql: ${TABLE}.stage ;;
    hidden: yes
  }
  dimension: sponsor_ids {
    type: string
    sql: ${TABLE}.sponsor_ids ;;
    hidden: yes
  }
  dimension: question_id {
    type: number
    sql: ${TABLE}.question_id ;;
    hidden: yes
  }
  dimension: sponsor_candidate {
    type: string
    sql: ${TABLE}.sponsor_candidate ;;
    hidden: yes
  }
  dimension: population_full {
    label: "Population and Party"
    description: "[av, lv, rv, v]-[d,r]"
    type: string
    sql: ${TABLE}.population_full ;;
    hidden: yes
  }
  dimension: population {
    description: "[av, lv, rv, v]"
    type: string
    sql: ${TABLE}.population ;;
    hidden: no
  }
  dimension: wiki_link {
     type: string
     sql: CASE
         WHEN ${campaign} = "Biden" THEN 'Joe_Biden'
         WHEN ${campaign} = "Buttigieg" THEN 'Pete_Buttigieg'
         WHEN ${campaign} = "Warren" THEN 'Elizabeth_Warren'
         WHEN ${campaign} = "Sanders" THEN 'Bernie_Sanders'
         END ;;
      hidden: yes
  }
  dimension: wiki {
     type: string
     sql: ${wiki_link};;
    hidden: yes
     html: <img src="http://webthumb.bluga.net/easythumb.php?user=79569&url=https://en.wikipedia.org/wiki/Pete_Buttigieg&hash=b8f5cb59ca9553c4770660263323ebde&size=medium&cache=1" width="200px"/> ;;
   }
  dimension: poll_id {
      type: number
      primary_key: yes
      sql: ${TABLE}.poll_id ;;
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
  dimension: candidate_name {
    type: string
    sql: ${TABLE}.candidate_name ;;
    hidden: yes
  }
  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
    hidden: yes
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
  dimension: pollster_id {
    type: number
    sql: ${TABLE}.pollster_id ;;
    hidden: yes
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
  measure: kpi {
    sql: CASE
        WHEN ${state} = "Iowa" THEN ${ia_polling_pct}
        WHEN ${state} = "New Hampshire" THEN ${nh_polling_pct}
        WHEN ${state} = "South Carolina" THEN ${sc_polling_pct}
        WHEN ${state} = "Nevada" THEN ${nv_polling_pct}
        END ;;
    hidden: yes
  }
  measure: dot {
    type: number
    label: "Bubble"
    sql: ${ia_polling_pct} ;;
    hidden: yes
    html: <img src="https://pngimg.com/uploads/dot/dot_PNG31.png" width={{value * 100}}/> ;;
  }
  dimension: internal {
    type: string
    sql: ${TABLE}.internal ;;
    hidden: yes
  }
  dimension: nationwide_batch {
    type: string
    sql: ${TABLE}.nationwide_batch ;;
    hidden: yes
  }

  #Boxplot measures
  measure: polling_pct_min {
    label: "MIN"
    type: min
    sql: ${pct_round} ;;
    value_format: "0.00\%"
    drill_fields: [candidate_name, state, pollster_rating_name, display_name, start_date_raw, end_date_raw, pct]
  }
  measure: polling_pct_max {
    label: "MAX"
    type: max
    sql: ${pct_round} ;;
    value_format: "0.00\%"
    drill_fields: [candidate_name, state, pollster_rating_name, display_name, start_date_raw, end_date_raw, pct]
  }
  measure: polling_pct_median {
    label: "MEDIAN"
    type: median
    sql: ${pct_round} ;;
    value_format: "0.00\%"
    drill_fields: [candidate_name, state, pollster_rating_name, display_name, start_date_raw, end_date_raw, pct]
  }
  measure: polling_pct_first {
    label: "1Q"
    type: percentile
    percentile: 25
    sql: ${pct_round} ;;
    value_format: "0.00\%"
    drill_fields: [candidate_name, state, pollster_rating_name, display_name, start_date_raw, end_date_raw, pct]
  }
  measure: polling_pct_fourth {
    label: "4Q"
    type: percentile
    percentile: 75
    sql: ${pct_round} ;;
    value_format: "0.00\%"
    drill_fields: [candidate_name, state, pollster_rating_name, display_name, start_date_raw, end_date_raw, pct]
  }

  # Util meausres
  measure: count_polls {
    type: count_distinct
    sql: ${poll_id} ;;
    drill_fields: [start_date_date, end_date_date, state, candidate_name, pollster_rating_name, display_name, sample_size,pct]
  }
  measure: total_sample {
    label: "Estimated Sample Size"
    type: sum
    sql: ${sample_size} ;;
  }
  measure: days_since_poll {
    type: number
    sql: DATEDIFF(${end_date_date}, now()) ;;
  }
  measure: days_to_contest {
    label: "Days to Contest"
    sql: CASE
        WHEN ${state} = "Iowa" THEN DATEDIFF(${start_date_date}, (DATE(STR_TO_DATE("02/02/2020", '%m/%d/%y') )))
        WHEN ${state} = "New Hampshire" THEN DATEDIFF(${start_date_date}, (DATE(STR_TO_DATE("02/11/2020", '%m/%d/%y') )))
        WHEN ${state} = "South Carolina" THEN DATEDIFF(${start_date_date}, (DATE(STR_TO_DATE("02/29/2020", '%m/%d/%y') )))
        WHEN ${state} = "Nevada" THEN DATEDIFF(${start_date_date}, (DATE(STR_TO_DATE("02/22/2020", '%m/%d/%y') )))
        WHEN ${state} IN ("Alabama", "Arkansas", "California", "Colorado", "Maine", "Massachusetts", "Minnesota", "North Carolina", "Oklahoma", "Tennessee", "Texas", "Utah", "Vermont", "Virginia") THEN DATEDIFF(${start_date_date}, (DATE(STR_TO_DATE("03/03/2020", '%m/%d/%y') )))
        END ;;
    type: number
  }
#   measure: mse {
#     label: "Mean Standard Error"
#     sql: CASE
#         WHEN ${state} = "Iowa" AND ${campaign} = "Buttigieg" THEN 26.2 - ${polling_pct} / 26.2 * 100
#         WHEN ${state} = "Iowa" AND ${campaign} = "Sanders" THEN 26.2 - ${polling_pct} / 26.2 * 100
#         WHEN ${state} = "Iowa" AND ${campaign} = "Warren" THEN 18 - ${polling_pct} / 18 * 100
#         WHEN ${state} = "Iowa" AND ${campaign} = "Biden" THEN 6 - ${polling_pct} / 6 * 100
#         WHEN ${state} = "Iowa" AND ${campaign} = "Klobuchar" THEN 12.3 - ${polling_pct} / 12.3 * 100
#         WHEN ${state} = "Iowa" AND ${campaign} = "Steyer" THEN 0.3 - ${polling_pct} / 0.3 * 100
#         WHEN ${state} = "New Hampshire" THEN DATEDIFF(${start_date_date}, (DATE(STR_TO_DATE("02/11/2020", '%m/%d/%y') )))
#         WHEN ${state} = "Nevada" THEN DATEDIFF(${start_date_date}, (DATE(STR_TO_DATE("02/22/2020", '%m/%d/%y') )))
#         END ;;
#     type: number
#   }

  #General avg measures
  measure: polling_pct {
    label: "All Polling Average"
    type: average
    sql: ${pct} ;;
    value_format: "0.00\%"
    link: {
      label: "Search this"
      url: "https://www.google.com/search?q={{ value | url_encode }}"
    }
    drill_fields: [candidate_name, state, pollster_rating_name, display_name, start_date_raw, end_date_raw]
  }
  measure: ntl_polling_pct {
    label: "National"
    type: average
    group_label: "State Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
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
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "Iowa, New Hampshire, South Carolina, Nevada"
    }
    value_format: "0.00\%"
  }
  measure: super_tuesday_polling_pct {
    label: "Super Tuesday"
    type: average
    group_label: "State Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "Alabama, Arkansas, California, Colorado, Maine, Massachusetts, Minnesota, North Carolina, Oklahoma, Tennessee, Texas, Utah, Vermont, Virginia"
    }
    value_format: "0.00\%"
  }
  measure: swing_states_polling_pct {
    label: "Swing States"
    type: average
    group_label: "State Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "Colorado, Florida, Iowa, Michigan, Minnesota, Ohio, Nevada, New Hampshire, North Carolina, Pennsylvania, Virginia, Wisconsin"
    }
    value_format: "0.00\%"
  }
  measure: trump_states_polling_pct {
    label: "Trump States"
    type: average
    group_label: "State Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "Alabama,Alaska,Arizona,Arkansas,Florida,Georgia,Idaho,Indiana,Iowa,Kansas,Kentucky,Louisiana,Maine,Michigan,Mississippi,Missouri,Montana,Nebraska,North Carolina,North Dakota,Ohio,Oklahoma,Pennsylvania,South Carolina,South Dakota,Tennessee,Texas,Utah,West Virginia,Wisconsin,Wyoming"
    }
    value_format: "0.00\%"
  }
  # Candidate measures
  measure: buttigieg_polling_pct {
    label: "Buttigieg Polling Average"
    type: average
    group_label: "Campaign Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
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
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
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
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: campaign
      value: "Warren"
    }
    value_format: "0.00\%"
  }
  measure: progressive_polling_pct {
    label: "Progressive Polling Average"
    type: number
    group_label: "Campaign Polling Average"
    sql: ${sanders_polling_pct} + ${warren_polling_pct} ;;
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    value_format: "0.00\%"
  }
  measure: center_left_polling_pct {
    label: "Center Left Polling Average"
    type: number
    group_label: "Campaign Polling Average"
    sql: ${buttigieg_polling_pct} + ${klobuchar_polling_pct} + ${biden_polling_pct} + ${bloomberg_polling_pct} ;;
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    value_format: "0.00\%"
  }
  measure: sanders_polling_pct {
    label: "Sanders Polling Average"
    type: average
    group_label: "Campaign Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: campaign
      value: "Sanders"
    }
    value_format: "0.00\%"
  }
  measure: harris_polling_pct {
    label: "Harris Polling Average"
    type: average
    group_label: "Campaign Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
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
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
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
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
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
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
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
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
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
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
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
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
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
    drill_fields: [candidate_name,state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
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
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
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
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
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
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
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
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
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
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
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
    drill_fields: [candidate_name, state, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: state
      value: "South Carolina"
    }
    value_format: "0.00\%"
  }

  # Date measures
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
  measure: dec_polling {
    label: "Dec 2019 Polling Average"
    type: average
    group_label: "Monthly Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: start_date_month_num
      value: "12"
    }
    value_format: "0.00\%"
  }
  measure: jan_polling {
    label: "Jan 2020 Polling Average"
    type: average
    group_label: "Monthly Polling Average"
    sql: ${pct} ;;
    drill_fields: [candidate_name, pollster_rating_name, state, pct, created_at_date, display_name, start_date_raw, end_date_raw]
    filters: {
      field: start_date_month_num
      value: "1"
    }
    filters: {
      field: start_date_year
      value: "2020"
    }
    value_format: "0.00\%"
  }

  # Testing something...
  measure: few_polls_null {
    hidden: yes
    sql: CASE
        WHEN ${count_polls} < 4 THEN null
        ELSE ${count_polls}
        END ;;
  }

}
