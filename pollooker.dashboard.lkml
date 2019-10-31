- dashboard: pollooker
  title: Pollooker
  layout: newspaper
  elements:
  - title: National Polling Averages
    name: National Polling Averages
    model: pollooker
    explore: primary
    type: looker_scatter
    fields: [primary.created_at_date, primary.campaign, primary.polling_pct]
    pivots: [primary.campaign]
    fill_fields: [primary.created_at_date]
    filters:
      primary.party: DEM
      primary.cycle: '2020'
      primary.campaign: Harris,Buttigieg,Warren,Biden,Yang,Sanders
    sorts: [primary.campaign 0, primary.created_at_date desc]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
        reverse: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: primary.avg_pct, id: Biden
              - primary.avg_pct, name: Biden}, {axisId: primary.avg_pct, id: Buttigieg
              - primary.avg_pct, name: Buttigieg}, {axisId: primary.avg_pct, id: Harris
              - primary.avg_pct, name: Harris}, {axisId: primary.avg_pct, id: Sanders
              - primary.avg_pct, name: Sanders}, {axisId: primary.avg_pct, id: Warren
              - primary.avg_pct, name: Warren}, {axisId: primary.avg_pct, id: Yang
              - primary.avg_pct, name: Yang}], showLabels: true, showValues: true,
        maxValue: 50, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
      Buttigieg - primary.avg_pct: "#3EB0D5"
      Biden - primary.avg_pct: "#12165C"
      Warren - primary.avg_pct: "#184EA0"
      Sanders - primary.avg_pct: "#1A81CE"
      Harris - primary.avg_pct: "#B4DED2"
      Yang - primary.avg_pct: "#a5c0f2"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    trend_lines: [{color: "#12165C", label_position: left, period: 7, regression_type: average,
        series_index: 1, show_label: true, label_type: string, label: Biden}, {color: "#184EA0",
        label_position: left, period: 7, regression_type: average, series_index: 5,
        show_label: true, label_type: string, label: Warren}, {color: "#1A81CE", label_position: left,
        period: 7, regression_type: average, series_index: 4, show_label: true, label_type: string,
        label: Sanders}, {color: "#3EB0D5", label_position: left, period: 7, regression_type: average,
        series_index: 2, show_label: true, label_type: string, label: Buttigieg},
      {color: "#B4DED2", label_position: left, period: 7, regression_type: average,
        series_index: 3, show_label: true, label_type: string, label: Harris}, {color: "#a5c0f2",
        label_position: left, period: 7, regression_type: average, series_index: 6,
        show_label: true, label_type: string, label: Yang}]
    show_null_points: false
    up_color: "#3EB0D5"
    down_color: "#B1399E"
    total_color: "#C2DD67"
    listen:
      Date: primary.created_at_date
    row: 8
    col: 0
    width: 24
    height: 10
  - title: National 1-Week Rolling Average
    name: National 1-Week Rolling Average
    model: pollooker
    explore: primary
    type: looker_line
    fields: [primary.created_at_date, primary.polling_pct, primary.campaign]
    pivots: [primary.campaign]
    fill_fields: [primary.created_at_date]
    filters:
      primary.campaign: Biden,Warren,Sanders,Buttigieg,Harris,Yang
      primary.state: EMPTY
    sorts: [primary.created_at_date desc, primary.campaign]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'mean(offset_list(${primary.polling_pct},
          0, 7))', value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    hidden_series: [Harris - primary.polling_pct, Yang - primary.polling_pct]
    legend_position: center
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_fields: [primary.polling_pct]
    row: 0
    col: 0
    width: 12
    height: 8
  - title: 1 week moving average Warren
    name: 1 week moving average Warren
    model: pollooker
    explore: primary
    type: single_value
    fields: [primary.created_at_date, primary.polling_pct, primary.campaign]
    pivots: [primary.campaign]
    fill_fields: [primary.created_at_date]
    filters:
      primary.campaign: Warren
      primary.state: EMPTY
    sorts: [primary.created_at_date desc, primary.campaign]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'mean(offset_list(${primary.polling_pct},
          0, 7))/100', value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: calculation_2, label: Calculation
          2, expression: 'offset(${calculation_1},0)-offset(${calculation_1},1)',
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Warren
    value_format: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: from yesterday
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
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: [Harris - primary.polling_pct, Yang - primary.polling_pct]
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_fields: [primary.polling_pct]
    listen: {}
    row: 0
    col: 16
    width: 4
    height: 4
  - title: 1 week moving average Sanders
    name: 1 week moving average Sanders
    model: pollooker
    explore: primary
    type: single_value
    fields: [primary.created_at_date, primary.polling_pct, primary.campaign]
    pivots: [primary.campaign]
    fill_fields: [primary.created_at_date]
    filters:
      primary.campaign: Sanders
      primary.state: EMPTY
    sorts: [primary.created_at_date desc, primary.campaign]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'mean(offset_list(${primary.polling_pct},
          0, 7))/100', value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: calculation_2, label: Calculation
          2, expression: 'offset(${calculation_1},0)-offset(${calculation_1},1)',
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Sanders
    value_format: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: from yesterday
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
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: [Harris - primary.polling_pct, Yang - primary.polling_pct]
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_fields: [primary.polling_pct]
    listen: {}
    row: 0
    col: 20
    width: 4
    height: 4
  - title: 1 week moving average Buttigieg
    name: 1 week moving average Buttigieg
    model: pollooker
    explore: primary
    type: single_value
    fields: [primary.created_at_date, primary.polling_pct, primary.campaign]
    pivots: [primary.campaign]
    fill_fields: [primary.created_at_date]
    filters:
      primary.campaign: Buttigieg
      primary.state: EMPTY
    sorts: [primary.created_at_date desc, primary.campaign]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'mean(offset_list(${primary.polling_pct},
          0, 7))/100', value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: calculation_2, label: Calculation
          2, expression: 'offset(${calculation_1},0)-offset(${calculation_1},1)',
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Buttigieg
    value_format: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: from yesterday
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
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: [Harris - primary.polling_pct, Yang - primary.polling_pct]
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_fields: [primary.polling_pct]
    listen: {}
    row: 4
    col: 12
    width: 4
    height: 4
  - title: 1 week moving average Harris
    name: 1 week moving average Harris
    model: pollooker
    explore: primary
    type: single_value
    fields: [primary.created_at_date, primary.polling_pct, primary.campaign]
    pivots: [primary.campaign]
    fill_fields: [primary.created_at_date]
    filters:
      primary.campaign: Harris
      primary.state: EMPTY
    sorts: [primary.created_at_date desc, primary.campaign]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'mean(offset_list(${primary.polling_pct},
          0, 7))/100', value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: calculation_2, label: Calculation
          2, expression: 'offset(${calculation_1},0)-offset(${calculation_1},1)',
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Harris
    value_format: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: from yesterday
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
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: [Harris - primary.polling_pct, Yang - primary.polling_pct]
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_fields: [primary.polling_pct]
    listen: {}
    row: 4
    col: 16
    width: 4
    height: 4
  - title: 1 week moving average Yang
    name: 1 week moving average Yang
    model: pollooker
    explore: primary
    type: single_value
    fields: [primary.created_at_date, primary.polling_pct, primary.campaign]
    pivots: [primary.campaign]
    fill_fields: [primary.created_at_date]
    filters:
      primary.campaign: Yang
      primary.state: EMPTY
    sorts: [primary.created_at_date desc, primary.campaign]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'mean(offset_list(${primary.polling_pct},
          0, 7))/100', value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: calculation_2, label: Calculation
          2, expression: 'offset(${calculation_1},0)-offset(${calculation_1},1)',
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Yang
    value_format: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: from yesterday
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
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: [Harris - primary.polling_pct, Yang - primary.polling_pct]
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_fields: [primary.polling_pct]
    listen: {}
    row: 4
    col: 20
    width: 4
    height: 4
  - title: Iowa Weekly
    name: Iowa Weekly
    model: pollooker
    explore: primary
    type: looker_line
    fields: [primary.created_at_week, primary.polling_pct, primary.campaign]
    pivots: [primary.campaign]
    fill_fields: [primary.created_at_week]
    filters:
      primary.campaign: Biden,Warren,Sanders,Harris,Yang,Buttigieg
      primary.state: Iowa
    sorts: [primary.created_at_week desc, primary.campaign]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
        reverse: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    legend_position: center
    series_types: {}
    point_style: circle
    series_colors:
      Warren - primary.polling_pct: "#558ce3"
      Buttigieg - primary.polling_pct: "#216db5"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 18
    col: 0
    width: 12
    height: 8
  - title: New Hampshire Weekly
    name: New Hampshire Weekly
    model: pollooker
    explore: primary
    type: looker_line
    fields: [primary.created_at_week, primary.polling_pct, primary.campaign]
    pivots: [primary.campaign]
    fill_fields: [primary.created_at_week]
    filters:
      primary.campaign: Biden,Warren,Sanders,Harris,Yang,Buttigieg
      primary.state: New Hampshire
    sorts: [primary.created_at_week desc, primary.campaign]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
        reverse: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    legend_position: center
    series_types: {}
    point_style: circle
    series_colors:
      Warren - primary.polling_pct: "#558ce3"
      Buttigieg - primary.polling_pct: "#216db5"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 18
    col: 12
    width: 12
    height: 8
  - title: Incoming Polls
    name: Incoming Polls
    model: pollooker
    explore: primary
    type: looker_grid
    fields: [primary.created_at_date, primary.state, primary.pollster, primary.fte_grade,
      primary.sample_size, primary.population, primary.polling_pct, primary.campaign]
    pivots: [primary.campaign]
    filters:
      primary.campaign: Biden,Warren,Sanders,Buttigieg,Harris,Yang
    sorts: [primary.created_at_date desc, primary.campaign]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: sample, label: Sample, expression: 'concat(to_string(${primary.sample_size}),
          " ", ${primary.population})', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, _type_hint: string}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_labels:
      primary.polling_pct: "%"
      primary.population: _
      primary.fte_grade: Grade
    series_column_widths:
      primary.population: 50
      primary.sample_size: 56
      primary.fte_grade: 53
      primary.pollster: 160
      primary.state: 53
      primary.created_at_date: 103
    series_cell_visualizations:
      primary.polling_pct:
        is_active: true
        value_display: true
        palette:
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
    series_text_format:
      primary.population: {}
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format: {}
    hidden_fields: [primary.sample_size, primary.population]
    listen: {}
    row: 26
    col: 0
    width: 15
    height: 8
  - title: 1 week moving average Biden
    name: 1 week moving average Biden
    model: pollooker
    explore: primary
    type: single_value
    fields: [primary.created_at_date, primary.polling_pct, primary.campaign]
    pivots: [primary.campaign]
    fill_fields: [primary.created_at_date]
    filters:
      primary.campaign: Biden
      primary.state: EMPTY
    sorts: [primary.created_at_date desc, primary.campaign]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'mean(offset_list(${primary.polling_pct},
          0, 7))/100', value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: calculation_2, label: Calculation
          2, expression: 'offset(${calculation_1},0)-offset(${calculation_1},1)',
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
      options:
        steps: 5
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Biden
    value_format: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: from yesterday
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
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: [Harris - primary.polling_pct, Yang - primary.polling_pct]
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_fields: [primary.polling_pct]
    listen: {}
    row: 0
    col: 12
    width: 4
    height: 4
  - title: National Moving Average Heatmap
    name: National Moving Average Heatmap
    model: pollooker
    explore: primary
    type: looker_grid
    fields: [primary.created_at_date, primary.polling_pct, primary.campaign]
    pivots: [primary.campaign]
    fill_fields: [primary.created_at_date]
    filters:
      primary.campaign: Biden,Warren,Sanders,Buttigieg,Harris,Yang
      primary.state: ''
    sorts: [primary.created_at_date desc, primary.campaign]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: rolling_avg, label: Rolling Avg, expression: 'mean(offset_list(${primary.polling_pct},
          0, 7))/100', value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    show_view_names: false
    show_row_numbers: true
    transpose: true
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_column_widths:
      '2019-10-25': 51
      '2019-10-24': 53
      '2019-10-23': 55
      tp_measure: 102
    series_cell_visualizations:
      primary.polling_pct:
        is_active: false
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '5'
    rows_font_size: '10'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: 23bcaaee-f734-48ce-b46e-d42726205e7b, options: {steps: 5}},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    hidden_series: [Harris - primary.polling_pct, Yang - primary.polling_pct]
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    show_null_points: false
    interpolation: linear
    hidden_fields: [primary.polling_pct]
    listen: {}
    row: 26
    col: 15
    width: 9
    height: 4
  - title: Iowa Moving Average Heatmap
    name: Iowa Moving Average Heatmap
    model: pollooker
    explore: primary
    type: looker_grid
    fields: [primary.created_at_date, primary.polling_pct, primary.campaign]
    pivots: [primary.campaign]
    fill_fields: [primary.created_at_date]
    filters:
      primary.campaign: Biden,Warren,Sanders,Buttigieg,Harris,Yang
      primary.state: Iowa
    sorts: [primary.created_at_date desc, primary.campaign]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: rolling_avg, label: Rolling Avg, expression: 'mean(offset_list(${primary.polling_pct},
          0, 7))/100', value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    show_view_names: false
    show_row_numbers: true
    transpose: true
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_column_widths:
      '2019-10-25': 51
      '2019-10-24': 53
      '2019-10-23': 55
      tp_measure: 102
    series_cell_visualizations:
      primary.polling_pct:
        is_active: false
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '5'
    rows_font_size: '10'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: 23bcaaee-f734-48ce-b46e-d42726205e7b, options: {steps: 5}},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    hidden_series: [Harris - primary.polling_pct, Yang - primary.polling_pct]
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    show_null_points: false
    interpolation: linear
    hidden_fields: [primary.polling_pct]
    listen: {}
    row: 30
    col: 15
    width: 9
    height: 4
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 1 years
    allow_multiple_values: true
    required: false
