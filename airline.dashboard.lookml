- dashboard: airline
  title: Airline
  layout: newspaper
  embed_style:
    background_color: ''
    show_title: false
    title_color: "#3a4245"
    show_filters_bar: false
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - name: Quick Stats
    type: text
    title_text: Quick Stats
    row: 0
    col: 0
    width: 24
    height: 2
  - name: Delay Deep Dive
    type: text
    title_text: Delay Deep Dive
    subtitle_text: Which flights are most likely to be delayed?
    row: 14
    col: 0
    width: 24
    height: 2
  - title: Count of Flights
    name: Count of Flights
    model: faa
    explore: flights
    type: single_value
    fields: [flights.flight_count]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Minutes for Delay: flights.minutes_delayed
      Origin City: origin.city_full
      Destination City: destination.city_full
      Month: flights.dep_month
      Year: flights.dep_year
      Carrier: carriers.nickname
    row: 2
    col: 5
    width: 6
    height: 6
  - title: Avg Distance Travelled (Miles)
    name: Avg Distance Travelled (Miles)
    model: faa
    explore: flights
    type: single_value
    fields: [flights.average_distance]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Minutes for Delay: flights.minutes_delayed
      Origin City: origin.city_full
      Destination City: destination.city_full
      Month: flights.dep_month
      Year: flights.dep_year
      Carrier: carriers.nickname
    row: 2
    col: 11
    width: 5
    height: 6
  - title: Average Flight Length (min)
    name: Average Flight Length (min)
    model: faa
    explore: flights
    type: single_value
    fields: [flights.average_flight_length]
    filters:
      flights.is_flight_delayed: 'Yes'
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Minutes for Delay: flights.minutes_delayed
      Origin City: origin.city_full
      Destination City: destination.city_full
      Month: flights.dep_month
      Year: flights.dep_year
      Carrier: carriers.nickname
    row: 2
    col: 0
    width: 5
    height: 6
  - title: Flights per Day
    name: Flights per Day
    model: faa
    explore: flights
    type: looker_bar
    fields: [flights.is_flight_delayed, flights.flight_count]
    pivots: [flights.is_flight_delayed]
    fill_fields: [flights.is_flight_delayed]
    sorts: [flights.flight_count desc 0, flights.is_flight_delayed]
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    colors: ['palette: Mixed Dark']
    series_colors: {}
    series_labels:
      No - flights.flight_count: On-Time
      Yes - flights.flight_count: Delayed
    listen:
      Minutes for Delay: flights.minutes_delayed
      Origin City: origin.city_full
      Destination City: destination.city_full
      Month: flights.dep_month
      Year: flights.dep_year
      Carrier: carriers.nickname
    row: 2
    col: 16
    width: 8
    height: 6
  - title: Longest Routes in Lower 48 (Min)
    name: Longest Routes in Lower 48 (Min)
    model: faa
    explore: flights
    type: looker_map
    fields: [flights.origin_location, flights.destination_location, flights.average_flight_length]
    filters:
      flights.flight_count: ">100"
      origin.state: "-AK,-HI,-PR"
      destination.state: "-AK,-HI,-PR"
    sorts: [flights.average_flight_length desc]
    limit: 50
    column_limit: 50
    map_plot_mode: lines
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map: usa
    map_projection: ''
    quantize_colors: false
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    colors: []
    series_colors: {}
    series_labels:
      No - flights.flight_count: On Time
      Yes - flights.flight_count: Delayed
    series_types: {}
    listen:
      Minutes for Delay: flights.minutes_delayed
      Origin City: origin.city_full
      Destination City: destination.city_full
      Month: flights.dep_month
      Year: flights.dep_year
      Carrier: carriers.nickname
    row: 8
    col: 0
    width: 8
    height: 6
  - title: 100 Most Common Routes in US
    name: 100 Most Common Routes in US
    model: faa
    explore: flights
    type: looker_map
    fields: [flights.origin_location, flights.destination_location, flights.flight_count]
    filters:
      origin.state: "-PR,-HI,-AK"
      destination.state: "-AK,-PR,-HI"
    sorts: [flights.flight_count desc]
    limit: 100
    column_limit: 50
    map_plot_mode: lines
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Minutes for Delay: flights.minutes_delayed
      Origin City: origin.city_full
      Destination City: destination.city_full
      Month: flights.dep_month
      Year: flights.dep_year
      Carrier: carriers.nickname
    row: 8
    col: 8
    width: 8
    height: 6
  - title: Market Share by Carrier by Year
    name: Market Share by Carrier by Year
    model: faa
    explore: flights
    type: looker_area
    fields: [flights.dep_year, carriers.nickname, flights.flight_count]
    pivots: [carriers.nickname]
    filters:
      carriers.nickname: Southwest,United,American,Delta,USAir
    sorts: [flights.dep_year desc, carriers.nickname]
    limit: 500
    column_limit: 50
    stacking: percent
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    colors: ['palette: Mixed Dark']
    series_colors: {}
    series_types: {}
    hidden_series: []
    listen:
      Minutes for Delay: flights.minutes_delayed
      Origin City: origin.city_full
      Destination City: destination.city_full
      Month: flights.dep_month
      Year: flights.dep_year
    row: 8
    col: 16
    width: 8
    height: 6
  - title: "% Delay by Carrier"
    name: "% Delay by Carrier"
    model: faa
    explore: flights
    type: looker_column
    fields: [flights.flight_count, flights.percent_flights_delayed, carriers.nickname]
    sorts: [flights.flight_count desc]
    limit: 10
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    colors: ['palette: Mixed Dark']
    series_colors: {}
    y_axes: [{label: '', orientation: left, series: [{id: flights.flight_count, name: 1
              - Flights Count, axisId: flights.flight_count, __FILE: faa/text.dashboard.lookml,
            __LINE_NUM: 508}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: faa/text.dashboard.lookml,
        __LINE_NUM: 505}, {label: !!null '', orientation: right, series: [{id: flights.percent_flights_delayed,
            name: 1 - Flights Percent Flights Delayed, axisId: flights.percent_flights_delayed,
            __FILE: faa/text.dashboard.lookml, __LINE_NUM: 524}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, __FILE: faa/text.dashboard.lookml, __LINE_NUM: 521}]
    series_labels:
      flights.flight_count: Count of Flights
      flights.percent_flights_delayed: "% Delayed"
    series_types:
      flights.percent_flights_delayed: line
    listen:
      Minutes for Delay: flights.minutes_delayed
      Origin City: origin.city_full
      Destination City: destination.city_full
      Month: flights.dep_month
      Year: flights.dep_year
      Carrier: carriers.nickname
    row: 16
    col: 0
    width: 8
    height: 6
  - title: Share by Destination (Top 5)
    name: Share by Destination (Top 5)
    model: faa
    explore: flights
    type: looker_pie
    fields: [destination.city_full, flights.flight_count]
    sorts: [flights.flight_count desc]
    limit: 5
    column_limit: 50
    value_labels: legend
    label_type: labPer
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    colors: ['palette: Mixed Dark']
    series_colors: {}
    series_labels:
      No - flights.flight_count: On Time
      Yes - flights.flight_count: Delayed
      flights.flight_count: Count
    series_types: {}
    y_axes: [{label: '', orientation: left, series: [{id: flights.flight_count, name: Count,
            axisId: flights.flight_count, __FILE: faa/text.dashboard.lookml, __LINE_NUM: 603}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear, __FILE: faa/text.dashboard.lookml, __LINE_NUM: 600},
      {label: !!null '', orientation: right, series: [{id: flights.percent_flights_delayed,
            name: Percent Flights Delayed, axisId: flights.percent_flights_delayed,
            __FILE: faa/text.dashboard.lookml, __LINE_NUM: 619}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, __FILE: faa/text.dashboard.lookml, __LINE_NUM: 616}]
    listen:
      Minutes for Delay: flights.minutes_delayed
      Origin City: origin.city_full
      Destination City: destination.city_full
      Month: flights.dep_month
      Year: flights.dep_year
      Carrier: carriers.nickname
    row: 16
    col: 16
    width: 8
    height: 6
  - title: "% of Delays by Flight Length"
    name: "% of Delays by Flight Length"
    model: faa
    explore: flights
    type: looker_donut_multiples
    fields: [flights.flight_count, flights.is_flight_delayed, flights.flight_length_tier]
    pivots: [flights.is_flight_delayed]
    fill_fields: [flights.is_flight_delayed, flights.flight_length_tier]
    sorts: [flights.is_flight_delayed]
    limit: 3
    column_limit: 50
    show_value_labels: false
    font_size: 12
    stacking: ''
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{id: flights.percent_flights_delayed,
            name: flights Percent Flights Delayed, axisId: flights.percent_flights_delayed,
            __FILE: faa/text.dashboard.lookml, __LINE_NUM: 690}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, __FILE: faa/text.dashboard.lookml, __LINE_NUM: 687}, {label: !!null '',
        orientation: right, series: [{id: flights.flight_count, name: flights Count,
            axisId: flights.flight_count, __FILE: faa/text.dashboard.lookml, __LINE_NUM: 706}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear, __FILE: faa/text.dashboard.lookml, __LINE_NUM: 703}]
    series_types: {}
    colors: ['palette: Mixed Dark']
    series_colors: {}
    listen:
      Minutes for Delay: flights.minutes_delayed
      Origin City: origin.city_full
      Destination City: destination.city_full
      Month: flights.dep_month
      Year: flights.dep_year
      Carrier: carriers.nickname
    row: 22
    col: 0
    width: 16
    height: 6
  - title: "% Delay by Time of Day"
    name: "% Delay by Time of Day"
    model: faa
    explore: flights
    type: looker_column
    fields: [flights.dep_hour_of_day, flights.flight_count, flights.percent_flights_delayed]
    fill_fields: [flights.dep_hour_of_day]
    sorts: [flights.dep_hour_of_day]
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    colors: ['palette: Mixed Dark']
    series_colors: {}
    y_axes: [{label: '', orientation: left, series: [{id: flights.flight_count, name: 1
              - Flights Count, axisId: flights.flight_count, __FILE: faa/text.dashboard.lookml,
            __LINE_NUM: 780}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: faa/text.dashboard.lookml,
        __LINE_NUM: 777}, {label: !!null '', orientation: right, series: [{id: flights.percent_flights_delayed,
            name: 1 - Flights Percent Flights Delayed, axisId: flights.percent_flights_delayed,
            __FILE: faa/text.dashboard.lookml, __LINE_NUM: 796}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, __FILE: faa/text.dashboard.lookml, __LINE_NUM: 793}]
    series_labels:
      flights.flight_count: Count of Flights
      flights.percent_flights_delayed: "% Delayed"
    series_types:
      flights.percent_flights_delayed: line
    listen:
      Minutes for Delay: flights.minutes_delayed
      Origin City: origin.city_full
      Destination City: destination.city_full
      Month: flights.dep_month
      Year: flights.dep_year
      Carrier: carriers.nickname
    row: 22
    col: 16
    width: 8
    height: 6
  - title: "% Delay by Date"
    name: "% Delay by Date"
    model: faa
    explore: flights
    type: looker_column
    fields: [flights.dep_month, flights.flight_count, flights.is_flight_delayed]
    pivots: [flights.is_flight_delayed]
    fill_fields: [flights.dep_month, flights.is_flight_delayed]
    sorts: [flights.dep_month desc, flights.is_flight_delayed]
    limit: 500
    column_limit: 50
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    colors: ['palette: Mixed Dark']
    series_colors: {}
    y_axes: [{label: '', orientation: left, series: [{id: flights.flight_count, name: Count
              of Flights, axisId: flights.flight_count, __FILE: faa/text.dashboard.lookml,
            __LINE_NUM: 875}], showLabels: true, showValues: true, maxValue: !!null '',
        minValue: !!null '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, __FILE: faa/text.dashboard.lookml, __LINE_NUM: 872}, {label: !!null '',
        orientation: right, series: [{id: flights.percent_flights_delayed, name: "%\
              \ Delayed", axisId: flights.percent_flights_delayed, __FILE: faa/text.dashboard.lookml,
            __LINE_NUM: 893}], showLabels: true, showValues: true, maxValue: !!null '',
        minValue: !!null '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, __FILE: faa/text.dashboard.lookml, __LINE_NUM: 890}]
    series_labels:
      flights.flight_count: Count of Flights
      flights.percent_flights_delayed: "% Delayed"
      No - flights.flight_count: On-Time
      Yes - flights.flight_count: Delayed
    series_types:
      flights.percent_flights_delayed: line
    listen:
      Minutes for Delay: flights.minutes_delayed
      Origin City: origin.city_full
      Destination City: destination.city_full
      Month: flights.dep_month
      Year: flights.dep_year
      Carrier: carriers.nickname
    row: 28
    col: 0
    width: 24
    height: 6
  - title: Top Origin Airports
    name: Top Origin Airports
    model: faa
    explore: flights
    type: looker_column
    fields: [flights.flight_count, origin.city_full, flights.percent_flights_delayed]
    sorts: [flights.flight_count desc]
    limit: 30
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    colors: ['palette: Mixed Dark']
    series_colors: {}
    series_labels:
      No - flights.flight_count: On Time
      Yes - flights.flight_count: Delayed
      flights.flight_count: Count
    y_axes: [{label: '', orientation: left, series: [{id: flights.flight_count, name: 1
              - Flights, axisId: flights.flight_count, __FILE: faa/text.dashboard.lookml,
            __LINE_NUM: 974}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: faa/text.dashboard.lookml,
        __LINE_NUM: 971}, {label: !!null '', orientation: right, series: [{id: flights.percent_flights_delayed,
            name: Percent Flights Delayed, axisId: flights.percent_flights_delayed,
            __FILE: faa/text.dashboard.lookml, __LINE_NUM: 990}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, __FILE: faa/text.dashboard.lookml, __LINE_NUM: 987}]
    series_types:
      flights.percent_flights_delayed: line
    listen:
      Minutes for Delay: flights.minutes_delayed
      Origin City: origin.city_full
      Destination City: destination.city_full
      Month: flights.dep_month
      Year: flights.dep_year
      Carrier: carriers.nickname
    row: 16
    col: 8
    width: 8
    height: 6
  filters:
  - name: Minutes for Delay
    title: Minutes for Delay
    type: field_filter
    default_value: '15'
    allow_multiple_values: true
    required: false
    model: faa
    explore: flights
    listens_to_filters: []
    field: flights.minutes_delayed
  - name: Origin City
    title: Origin City
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: faa
    explore: flights
    listens_to_filters: []
    field: origin.city_full
  - name: Destination City
    title: Destination City
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: faa
    explore: flights
    listens_to_filters: []
    field: destination.city_full
  - name: Month
    title: Month
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: faa
    explore: flights
    listens_to_filters: []
    field: flights.dep_month
  - name: Year
    title: Year
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: faa
    explore: flights
    listens_to_filters: []
    field: flights.dep_year
  - name: Carrier
    title: Carrier
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: faa
    explore: flights
    listens_to_filters: []
    field: carriers.nickname
