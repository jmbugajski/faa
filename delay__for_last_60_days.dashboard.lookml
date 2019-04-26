- dashboard: delay__for_last_60_days
  title: Delay % for Last 60 Days
  layout: newspaper
  elements:
  - name: Delay % for Last 60 Days
    title: Delay % for Last 60 Days
    model: faa
    explore: flights
    type: looker_column
    fields: [flights.dep_date, flights.flight_count, flights.is_flight_delayed]
    pivots: [flights.is_flight_delayed]
    fill_fields: [flights.dep_date, flights.is_flight_delayed]
    filters:
      flights.dep_date: 2005/11/01 to 2015/12/31
      flights.carrier: ''
      flights.origin: ''
    sorts: [flights.dep_date desc, flights.is_flight_delayed]
    limit: 500
    query_timezone: America/Los_Angeles
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      No - flights.flight_count: "#4CAF50"
      Yes - flights.flight_count: "#ff3b3b"
    series_labels:
      No - flights.flight_count: On-Time
      Yes - flights.flight_count: Delayed
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 0
    col: 0
    width: 24
    height: 8
