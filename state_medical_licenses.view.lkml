view: state_medical_licenses {
  sql_table_name: public.state_medical_licenses ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: archived {
    type: yesno
    sql: ${TABLE}."archived" ;;
  }

  dimension: board_name {
    type: string
    sql: ${TABLE}."board_name" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."created_at" ;;
  }

  dimension_group: deleted {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."deleted_at" ;;
  }

  dimension: entry_method {
    type: string
    sql: ${TABLE}."entry_method" ;;
  }

  dimension: expiration_state {
    type: string
    sql: ${TABLE}."expiration_state" ;;
  }

  dimension_group: expires {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."expires_on" ;;
  }

  dimension: license_status {
    type: string
    sql: ${TABLE}."license_status" ;;
  }

  dimension: license_type {
    type: string
    sql: ${TABLE}."license_type" ;;
  }

  dimension: master_id {
    type: number
    sql: ${TABLE}."master_id" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}."notes" ;;
  }

  dimension: number {
    type: string
    sql: ${TABLE}."number" ;;
  }

  dimension_group: original_issuance {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."original_issuance_on" ;;
  }

  dimension: provider_id {
    type: number
    sql: ${TABLE}."provider_id" ;;
  }

  dimension: renewal_status {
    type: string
    sql: ${TABLE}."renewal_status" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: uncompiled_file {
    type: string
    sql: ${TABLE}."uncompiled_file" ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."updated_at" ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}."uuid" ;;
  }

  dimension: validation_status {
    type: string
    sql: ${TABLE}."validation_status" ;;
  }

  dimension: verification_method {
    type: string
    sql: ${TABLE}."verification_method" ;;
  }

  dimension_group: verification_requested {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."verification_requested_at" ;;
  }

  dimension: verification_response {
    type: string
    sql: ${TABLE}."verification_response" ;;
  }

  dimension_group: verified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."verified_at" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, board_name, name]
  }
}
