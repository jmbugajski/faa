connection: "faa_data"

# include all the views
include: "*.view"

datagroup: faa_flight_data_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: faa_flight_data_default_datagroup

explore: accidents {
  group_label: "FAA"
}

explore: aircraft {
  group_label: "FAA"
  join: aircraft_types {
    type: left_outer
    sql_on: ${aircraft.aircraft_type_id} = ${aircraft_types.aircraft_type_id} ;;
    relationship: many_to_one
  }

  join: aircraft_engine_types {
    type: left_outer
    sql_on: ${aircraft.aircraft_engine_type_id} = ${aircraft_engine_types.aircraft_engine_type_id} ;;
    relationship: many_to_one
  }
}

explore: aircraft_engine_types {
  group_label: "FAA"
}

explore: aircraft_engines {
  group_label: "FAA"
  join: aircraft_engine_types {
    type: left_outer
    sql_on: ${aircraft_engines.aircraft_engine_type_id} = ${aircraft_engine_types.aircraft_engine_type_id} ;;
    relationship: many_to_one
  }
}

explore: aircraft_models {
  group_label: "FAA"
  join: aircraft_types {
    type: left_outer
    sql_on: ${aircraft_models.aircraft_type_id} = ${aircraft_types.aircraft_type_id} ;;
    relationship: many_to_one
  }

  join: aircraft_engine_types {
    type: left_outer
    sql_on: ${aircraft_models.aircraft_engine_type_id} = ${aircraft_engine_types.aircraft_engine_type_id} ;;
    relationship: many_to_one
  }
}

explore: aircraft_types {
  group_label: "FAA"
}

explore: airport_remarks {
  group_label: "FAA"
}

explore: airports {
  group_label: "FAA"
}

explore: carriers {
  group_label: "FAA"
}

explore: exceptions {
  group_label: "FAA"
}

explore: ontime {
  group_label: "FAA"
}

explore: states {
  group_label: "FAA"
}

explore: zipcodes {
  group_label: "FAA"
}
