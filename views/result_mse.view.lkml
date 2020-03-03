# If necessary, uncomment the line below to include explore_source.
# include: "pollooker.model.lkml"

view: result_mse {
  set: drills {
    fields: [campaign, state, start_date_date, pollster, polling_pct, days_to_contest]
  }
  derived_table: {
    explore_source: primary {
      column: campaign {}
      column: state {}
      column: start_date_date {}
      column: pollster {}
      column: polling_pct {}
      column: days_to_contest {}
      filters: {
        field: primary.state
        value: "Iowa,New Hampshire,Nevada,South Carolina,Alabama, Arkansas, California, Colorado, Maine, Massachusetts, Minnesota, North Carolina, Oklahoma, Tennessee, Texas, Utah, Vermont, Virginia"
      }
      filters: {
        field: primary.campaign
        value: "Biden,Buttigieg,Sanders,Steyer,Warren,Klobuchar, Bloomberg"
      }
      filters: {
        field: primary.start_date_date
        value: "1 years"
      }
    }
  }
  dimension: campaign {
    description: "Last names: Biden, Warren, Sanders, Buttigieg, Harris, Yang, Klobuchar, etc"
  }
  dimension: state {
    description: "Capital acronyms (AZ, GA, CA), For National polls, filter: state is blank."
  }
  dimension: start_date_date {
    label: "Primary Poll Open Date"
    type: date
  }
  dimension: pollster {
    label: "Primary Pollster Name"
  }
  dimension: polling_pct {
    label: "Primary All Polling Average"
    value_format: "0.00\%"
    type: number
  }
  measure: polling_pct_sc {
    label: "Primary SC Polling Average"
    value_format: "0.00\%"
    type: average
    filters: [
      result_mse.state: "South Carolina"
    ]
    drill_fields: [drills*]
  }
  dimension: days_to_contest {
    type: number
  }
  measure: mse {
    label: "Mean Standard Error"
    sql: CASE
        WHEN ${state} = "Iowa" AND ${campaign} = "Buttigieg" THEN (ABS(26.2 - ${polling_pct}) / 26.2)
        WHEN ${state} = "Iowa" AND ${campaign} = "Sanders" THEN (ABS(26.2 - ${polling_pct}) / 26.2)
        WHEN ${state} = "Iowa" AND ${campaign} = "Warren" THEN (ABS(18 - ${polling_pct}) / 18)
        WHEN ${state} = "Iowa" AND ${campaign} = "Biden" THEN (ABS(6 - ${polling_pct}) / 6)
        WHEN ${state} = "Iowa" AND ${campaign} = "Klobuchar" THEN (ABS(12.3 - ${polling_pct}) / 12.3)
        WHEN ${state} = "Iowa" AND ${campaign} = "Steyer" THEN (ABS(0.3 - ${polling_pct}) / 0.3)
        WHEN ${state} = "New Hampshire" AND ${campaign} = "Buttigieg" THEN (ABS(24.4 - ${polling_pct}) / 24.4)
        WHEN ${state} = "New Hampshire" AND ${campaign} = "Sanders" THEN (ABS(25.7 - ${polling_pct}) / 25.7)
        WHEN ${state} = "New Hampshire" AND ${campaign} = "Warren" THEN (ABS(9.2 - ${polling_pct}) / 9.2)
        WHEN ${state} = "New Hampshire" AND ${campaign} = "Biden" THEN (ABS(8.4 - ${polling_pct}) / 8.4)
        WHEN ${state} = "New Hampshire" AND ${campaign} = "Klobuchar" THEN (ABS(19.8 - ${polling_pct}) / 19.8)
        WHEN ${state} = "New Hampshire" AND ${campaign} = "Steyer" THEN (ABS(3.6 - ${polling_pct}) / 3.6)
        WHEN ${state} = "Nevada" AND ${campaign} = "Buttigieg" THEN (ABS(14.3 - ${polling_pct}) / 14.3)
        WHEN ${state} = "Nevada" AND ${campaign} = "Sanders" THEN (ABS(46.8 - ${polling_pct}) / 46.8)
        WHEN ${state} = "Nevada" AND ${campaign} = "Warren" THEN (ABS(9.7 - ${polling_pct}) / 9.7)
        WHEN ${state} = "Nevada" AND ${campaign} = "Biden" THEN (ABS(20.2 - ${polling_pct}) / 20.2)
        WHEN ${state} = "Nevada" AND ${campaign} = "Klobuchar" THEN (ABS(4.2 - ${polling_pct}) / 4.2)
        WHEN ${state} = "Nevada" AND ${campaign} = "Steyer" THEN (ABS(4.7 - ${polling_pct}) / 4.7)
        END ;;
    type: average
    value_format: "0.00%"
    drill_fields: [drills*]
  }
  measure: overunder {
    label: "Direction"
    sql: CASE
        WHEN ${state} = "Iowa" AND ${campaign} = "Buttigieg" THEN IF(26.2 - ${polling_pct} > 0, +1, -1)
        WHEN ${state} = "Iowa" AND ${campaign} = "Sanders" THEN IF(26.2 - ${polling_pct} > 0, +1, -1)
        WHEN ${state} = "Iowa" AND ${campaign} = "Warren" THEN IF(18 - ${polling_pct} > 0, +1, -1)
        WHEN ${state} = "Iowa" AND ${campaign} = "Biden" THEN IF(6 - ${polling_pct} > 0, +1, -1)
        WHEN ${state} = "Iowa" AND ${campaign} = "Klobuchar" THEN IF(12.3 - ${polling_pct} > 0, +1, -1)
        WHEN ${state} = "Iowa" AND ${campaign} = "Steyer" THEN IF(0.3 - ${polling_pct} > 0, +1, -1)
        WHEN ${state} = "New Hampshire" AND ${campaign} = "Buttigieg" THEN IF(24.4 - ${polling_pct} > 0, +1, -1)
        WHEN ${state} = "New Hampshire" AND ${campaign} = "Sanders" THEN IF(25.7 - ${polling_pct} > 0, +1, -1)
        WHEN ${state} = "New Hampshire" AND ${campaign} = "Warren" THEN IF(9.2 - ${polling_pct} > 0, +1, -1)
        WHEN ${state} = "New Hampshire" AND ${campaign} = "Biden" THEN IF(8.4 - ${polling_pct} > 0, +1, -1)
        WHEN ${state} = "New Hampshire" AND ${campaign} = "Klobuchar" THEN IF(19.8 - ${polling_pct} > 0, +1, -1)
        WHEN ${state} = "New Hampshire" AND ${campaign} = "Steyer" THEN IF(3.6 - ${polling_pct} > 0, +1, -1)
        WHEN ${state} = "Nevada" AND ${campaign} = "Buttigieg" THEN IF(14.3 - ${polling_pct} > 0, +1, -1)
        WHEN ${state} = "Nevada" AND ${campaign} = "Sanders" THEN IF(46.8 - ${polling_pct} > 0, +1, -1)
        WHEN ${state} = "Nevada" AND ${campaign} = "Warren" THEN IF(9.7 - ${polling_pct} > 0, +1, -1)
        WHEN ${state} = "Nevada" AND ${campaign} = "Biden" THEN IF(20.2 - ${polling_pct} > 0, +1, -1)
        WHEN ${state} = "Nevada" AND ${campaign} = "Klobuchar" THEN IF(4.2 - ${polling_pct} > 0, +1, -1)
        WHEN ${state} = "Nevada" AND ${campaign} = "Steyer" THEN IF(4.7 - ${polling_pct} > 0, +1, -1)
        END ;;
    type: number
    drill_fields: [drills*]
  }
  measure: adj_pct_max {
    label: "Adjusted Polling Pct"
    sql: ${overunder}*(${polling_pct} * ${mse}) + (${polling_pct}) ;;
    type: number
    value_format: "0.00\%"
    drill_fields: [drills*]
  }

#   measure: avg_mse {
#     type: average
#     sql: ${mse} ;;
#   }
}
