- dashboard: pollooker_campaign
  title: Pollooker
  layout: newspaper
  elements:
  - title: Untitled
    name: Untitled
    model: pollooker
    explore: primary
    type: single_value
    fields: [primary.mugshot]
    filters:
      primary.mugshot: https://i.ibb.co/Mnf4KkB/TOC-buttigieg-4x3.png
    sorts: [primary.mugshot]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen: {}
    row: 12
    col: 0
    width: 4
    height: 4
  - title: Untitled (copy)
    name: Untitled (copy)
    model: pollooker
    explore: primary
    type: single_value
    fields: [primary.mugshot]
    filters: {}
    sorts: [primary.mugshot]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Campaign: primary.campaign
    row: 4
    col: 0
    width: 4
    height: 4
  - title: Biden
    name: Biden
    model: pollooker
    explore: primary
    type: looker_area
    fields: [primary.end_date_week, primary.ntl_polling_pct, primary.es_polling_pct]
    fill_fields: [primary.end_date_week]
    filters:
      primary.campaign: Biden
      primary.end_date_year: 11 months
    sorts: [primary.end_date_week desc]
    limit: 500
    dynamic_fields: [{table_calculation: national, label: National, expression: 'mean(offset_list(${primary.ntl_polling_pct},0,2))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: early_state, label: Early State,
        expression: 'mean(offset_list(${primary.es_polling_pct},0,2))', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
      options:
        steps: 5
        reverse: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hide_legend: false
    legend_position: right
    series_types: {}
    point_style: none
    series_colors:
      primary.ntl_polling_pct: "#4276BE"
      primary.es_polling_pct: "#3EB0D5"
      national: "#B32F37"
      early_state: "#e3a4ac"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    show_null_points: false
    interpolation: monotone
    discontinuous_nulls: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    hidden_fields: [primary.ntl_polling_pct, primary.es_polling_pct]
    listen: {}
    row: 0
    col: 4
    width: 16
    height: 4
  - title: Untitled (copy 2)
    name: Untitled (copy 2)
    model: pollooker
    explore: primary
    type: single_value
    fields: [primary.mugshot]
    filters: {}
    sorts: [primary.mugshot]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Campaign: primary.campaign
    row: 0
    col: 0
    width: 4
    height: 4
  - title: Untitled (copy 3)
    name: Untitled (copy 3)
    model: pollooker
    explore: primary
    type: single_value
    fields: [primary.mugshot]
    filters: {}
    sorts: [primary.mugshot]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Campaign: primary.campaign
    row: 8
    col: 0
    width: 4
    height: 4
  - title: Warren
    name: Warren
    model: pollooker
    explore: primary
    type: looker_area
    fields: [primary.end_date_week, primary.ntl_polling_pct, primary.es_polling_pct]
    fill_fields: [primary.end_date_week]
    filters:
      primary.campaign: Warren
      primary.end_date_year: 11 months
    sorts: [primary.end_date_week desc]
    limit: 500
    dynamic_fields: [{table_calculation: national, label: National, expression: 'mean(offset_list(${primary.ntl_polling_pct},0,2))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: early_state, label: Early State,
        expression: 'mean(offset_list(${primary.es_polling_pct},0,2))', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
      options:
        steps: 5
        reverse: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hide_legend: false
    legend_position: right
    series_types: {}
    point_style: none
    series_colors:
      primary.ntl_polling_pct: "#4276BE"
      primary.es_polling_pct: "#3EB0D5"
      national: "#592EC2"
      early_state: "#967dc2"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    show_null_points: false
    interpolation: monotone
    discontinuous_nulls: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    hidden_fields: [primary.ntl_polling_pct, primary.es_polling_pct]
    listen: {}
    row: 4
    col: 4
    width: 16
    height: 4
  - title: Sanders
    name: Sanders
    model: pollooker
    explore: primary
    type: looker_area
    fields: [primary.end_date_week, primary.ntl_polling_pct, primary.es_polling_pct]
    fill_fields: [primary.end_date_week]
    filters:
      primary.campaign: Sanders
      primary.end_date_year: 11 months
    sorts: [primary.end_date_week desc]
    limit: 500
    dynamic_fields: [{table_calculation: national, label: National, expression: 'mean(offset_list(${primary.ntl_polling_pct},0,2))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: early_state, label: Early State,
        expression: 'mean(offset_list(${primary.es_polling_pct},0,2))', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
      options:
        steps: 5
        reverse: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hide_legend: false
    legend_position: right
    series_types: {}
    point_style: none
    series_colors:
      primary.ntl_polling_pct: "#4276BE"
      primary.es_polling_pct: "#3EB0D5"
      national: "#3EB0D5"
      early_state: "#b5d8f0"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    show_null_points: false
    interpolation: monotone
    discontinuous_nulls: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    hidden_fields: [primary.ntl_polling_pct, primary.es_polling_pct]
    listen: {}
    row: 8
    col: 4
    width: 16
    height: 4
  - title: Buttigieg
    name: Buttigieg
    model: pollooker
    explore: primary
    type: looker_area
    fields: [primary.end_date_week, primary.ntl_polling_pct, primary.es_polling_pct]
    fill_fields: [primary.end_date_week]
    filters:
      primary.campaign: Buttigieg
      primary.end_date_year: 11 months
    sorts: [primary.end_date_week desc]
    limit: 500
    dynamic_fields: [{table_calculation: national, label: National, expression: 'mean(offset_list(${primary.ntl_polling_pct},0,2))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: early_state, label: Early State,
        expression: 'mean(offset_list(${primary.es_polling_pct},0,2))', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
      options:
        steps: 5
        reverse: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hide_legend: false
    legend_position: right
    series_types: {}
    point_style: none
    series_colors:
      primary.ntl_polling_pct: "#4276BE"
      primary.es_polling_pct: "#3EB0D5"
      national: "#4276BE"
      early_state: "#a4b9e6"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    show_null_points: false
    interpolation: monotone
    discontinuous_nulls: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    hidden_fields: [primary.ntl_polling_pct, primary.es_polling_pct]
    listen: {}
    row: 12
    col: 4
    width: 16
    height: 4
  - title: Biden (copy)
    name: Biden (copy)
    model: pollooker
    explore: primary
    type: single_value
    fields: [primary.end_date_week, primary.ntl_polling_pct, primary.es_polling_pct]
    fill_fields: [primary.end_date_week]
    filters:
      primary.campaign: Biden
    sorts: [primary.end_date_week desc]
    limit: 500
    dynamic_fields: [{table_calculation: national, label: National, expression: 'mean(offset_list(${primary.ntl_polling_pct},0,2))/100',
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: early_state, label: Early State,
        expression: 'mean(offset_list(${primary.es_polling_pct},0,2))/100', value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
      options:
        steps: 5
        reverse: false
    custom_color_enabled: true
    custom_color: "#B32F37"
    show_single_value_title: true
    single_value_title: National
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: ''
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hide_legend: false
    legend_position: right
    series_types: {}
    point_style: none
    series_colors:
      primary.ntl_polling_pct: "#4276BE"
      primary.es_polling_pct: "#3EB0D5"
      national: "#4276BE"
      early_state: "#3EB0D5"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    show_null_points: false
    interpolation: monotone
    discontinuous_nulls: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    hidden_fields: [primary.ntl_polling_pct, primary.es_polling_pct]
    listen: {}
    row: 0
    col: 20
    width: 4
    height: 4
  - title: Biden (copy 2)
    name: Biden (copy 2)
    model: pollooker
    explore: primary
    type: single_value
    fields: [primary.end_date_week, primary.ntl_polling_pct, primary.es_polling_pct]
    fill_fields: [primary.end_date_week]
    filters:
      primary.campaign: Warren
    sorts: [primary.end_date_week desc]
    limit: 500
    dynamic_fields: [{table_calculation: national, label: National, expression: 'mean(offset_list(${primary.ntl_polling_pct},0,2))/100',
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: early_state, label: Early State,
        expression: 'mean(offset_list(${primary.es_polling_pct},0,2))/100', value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
      options:
        steps: 5
        reverse: false
    custom_color_enabled: true
    custom_color: "#592EC2"
    show_single_value_title: true
    single_value_title: National
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: ''
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hide_legend: false
    legend_position: right
    series_types: {}
    point_style: none
    series_colors:
      primary.ntl_polling_pct: "#4276BE"
      primary.es_polling_pct: "#3EB0D5"
      national: "#4276BE"
      early_state: "#3EB0D5"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    show_null_points: false
    interpolation: monotone
    discontinuous_nulls: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    hidden_fields: [primary.ntl_polling_pct, primary.es_polling_pct]
    listen: {}
    row: 4
    col: 20
    width: 4
    height: 4
  - title: Biden (copy 3)
    name: Biden (copy 3)
    model: pollooker
    explore: primary
    type: single_value
    fields: [primary.end_date_week, primary.ntl_polling_pct, primary.es_polling_pct]
    fill_fields: [primary.end_date_week]
    filters:
      primary.campaign: Buttigieg
    sorts: [primary.end_date_week desc]
    limit: 500
    dynamic_fields: [{table_calculation: national, label: National, expression: 'mean(offset_list(${primary.ntl_polling_pct},0,2))/100',
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: early_state, label: Early State,
        expression: 'mean(offset_list(${primary.es_polling_pct},0,2))/100', value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
      options:
        steps: 5
        reverse: false
    custom_color_enabled: true
    custom_color: "#4276BE"
    show_single_value_title: true
    single_value_title: National
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: ''
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hide_legend: false
    legend_position: right
    series_types: {}
    point_style: none
    series_colors:
      primary.ntl_polling_pct: "#4276BE"
      primary.es_polling_pct: "#3EB0D5"
      national: "#4276BE"
      early_state: "#3EB0D5"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    show_null_points: false
    interpolation: monotone
    discontinuous_nulls: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    hidden_fields: [primary.ntl_polling_pct, primary.es_polling_pct]
    listen: {}
    row: 12
    col: 20
    width: 4
    height: 4
  - title: Biden (copy 4)
    name: Biden (copy 4)
    model: pollooker
    explore: primary
    type: single_value
    fields: [primary.end_date_week, primary.ntl_polling_pct, primary.es_polling_pct]
    fill_fields: [primary.end_date_week]
    filters:
      primary.campaign: Sanders
    sorts: [primary.end_date_week desc]
    limit: 500
    dynamic_fields: [{table_calculation: national, label: National, expression: 'mean(offset_list(${primary.ntl_polling_pct},0,2))/100',
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: early_state, label: Early State,
        expression: 'mean(offset_list(${primary.es_polling_pct},0,2))/100', value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
      options:
        steps: 5
        reverse: false
    custom_color_enabled: true
    custom_color: "#3EB0D5"
    show_single_value_title: true
    single_value_title: National
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: ''
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hide_legend: false
    legend_position: right
    series_types: {}
    point_style: none
    series_colors:
      primary.ntl_polling_pct: "#4276BE"
      primary.es_polling_pct: "#3EB0D5"
      national: "#4276BE"
      early_state: "#3EB0D5"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    show_null_points: false
    interpolation: monotone
    discontinuous_nulls: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    hidden_fields: [primary.ntl_polling_pct, primary.es_polling_pct]
    listen: {}
    row: 8
    col: 20
    width: 4
    height: 4
  - title: National Polls
    name: National Polls
    model: pollooker
    explore: primary
    type: looker_scatter
    fields: [primary.start_date_date, primary.end_date_date, primary.biden_polling_pct,
      primary.buttigieg_polling_pct, primary.sanders_polling_pct, primary.warren_polling_pct]
    filters:
      primary.state: EMPTY
    sorts: [primary.start_date_date desc]
    limit: 500
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        reverse: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: primary.biden_polling_pct,
            id: primary.biden_polling_pct, name: Biden Polling Average}, {axisId: primary.buttigieg_polling_pct,
            id: primary.buttigieg_polling_pct, name: Buttigieg Polling Average}, {
            axisId: primary.sanders_polling_pct, id: primary.sanders_polling_pct,
            name: Sanders Polling Average}, {axisId: primary.warren_polling_pct, id: primary.warren_polling_pct,
            name: Warren Polling Average}], showLabels: true, showValues: true, maxValue: 45,
        unpinAxis: false, tickDensity: custom, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: []
    legend_position: center
    series_types: {}
    point_style: circle
    series_colors:
      primary.biden_polling_pct: "#e8a2b6"
      primary.buttigieg_polling_pct: "#98aee8"
      primary.sanders_polling_pct: "#abdbf2"
      primary.warren_polling_pct: "#a58ee3"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    trend_lines: [{color: "#B32F37", label_position: left, period: 14, regression_type: average,
        series_index: 1, show_label: true, label_type: string, label: Biden}, {color: "#4276BE",
        label_position: left, period: 14, regression_type: average, series_index: 2,
        show_label: true, label_type: string, label: Buttigieg}, {color: "#3EB0D5",
        label_position: left, period: 14, regression_type: average, series_index: 3,
        show_label: true, label_type: string, label: Sanders}, {color: "#592EC2",
        label_position: left, period: 14, regression_type: average, series_index: 4,
        show_label: true, label_type: string, label: Warren}]
    show_null_points: false
    hidden_fields: [primary.end_date_date]
    listen: {}
    row: 16
    col: 0
    width: 12
    height: 13
  - title: Early State Polls (IA,SC,NH,NV)
    name: Early State Polls (IA,SC,NH,NV)
    model: pollooker
    explore: primary
    type: looker_scatter
    fields: [primary.start_date_date, primary.end_date_date, primary.biden_polling_pct,
      primary.buttigieg_polling_pct, primary.sanders_polling_pct, primary.warren_polling_pct]
    filters:
      primary.state: Iowa,Nevada,South Carolina,New Hampshire
    sorts: [primary.start_date_date desc]
    limit: 500
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        reverse: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: primary.biden_polling_pct,
            id: primary.biden_polling_pct, name: Biden Polling Average}, {axisId: primary.buttigieg_polling_pct,
            id: primary.buttigieg_polling_pct, name: Buttigieg Polling Average}, {
            axisId: primary.sanders_polling_pct, id: primary.sanders_polling_pct,
            name: Sanders Polling Average}, {axisId: primary.warren_polling_pct, id: primary.warren_polling_pct,
            name: Warren Polling Average}], showLabels: true, showValues: true, maxValue: 45,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: []
    legend_position: center
    series_types: {}
    point_style: circle
    series_colors:
      primary.biden_polling_pct: "#e8a2b6"
      primary.buttigieg_polling_pct: "#98aee8"
      primary.sanders_polling_pct: "#abdbf2"
      primary.warren_polling_pct: "#a58ee3"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    trend_lines: [{color: "#B32F37", label_position: left, period: 14, regression_type: average,
        series_index: 1, show_label: true, label_type: string, label: Biden}, {color: "#4276BE",
        label_position: left, period: 14, regression_type: average, series_index: 2,
        show_label: true, label_type: string, label: Buttigieg}, {color: "#3EB0D5",
        label_position: left, period: 14, regression_type: average, series_index: 3,
        show_label: true, label_type: string, label: Sanders}, {color: "#592EC2",
        label_position: left, period: 14, regression_type: average, series_index: 4,
        show_label: true, label_type: string, label: Warren}]
    show_null_points: false
    hidden_fields: [primary.end_date_date]
    listen: {}
    row: 16
    col: 12
    width: 12
    height: 13
