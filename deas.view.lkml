view: deas {
  sql_table_name: public.deas ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: activity {
    type: string
    sql: ${TABLE}."activity" ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}."address" ;;
  }

  dimension: archived {
    type: yesno
    sql: ${TABLE}."archived" ;;
  }

  dimension: bac {
    type: string
    sql: ${TABLE}."bac" ;;
  }

  dimension: basc {
    type: string
    sql: ${TABLE}."basc" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
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

  dimension: drug_schedule {
    type: string
    sql: ${TABLE}."drug_schedule" ;;
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

  dimension: master_id {
    type: number
    sql: ${TABLE}."master_id" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: number {
    type: string
    sql: ${TABLE}."number" ;;
  }

  dimension: payment_indicator {
    type: string
    sql: ${TABLE}."payment_indicator" ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}."postal_code" ;;
  }

  dimension: provider_id {
    type: number
    sql: ${TABLE}."provider_id" ;;
  }

  dimension: renewal_status {
    type: string
    sql: ${TABLE}."renewal_status" ;;
  }

  dimension_group: signature {
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
    sql: ${TABLE}."signature_date" ;;
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

  dimension: verification_response {
    type: string
    sql: ${TABLE}."verification_response" ;;
  }

  dimension: verification_retries {
    type: number
    sql: ${TABLE}."verification_retries" ;;
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
    drill_fields: [id, name]
  }
}
