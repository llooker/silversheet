view: providers {
  sql_table_name: public.providers ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: api_status {
    type: string
    sql: ${TABLE}."api_status" ;;
  }

  dimension: archived_uuids {
    type: string
    sql: ${TABLE}."archived_uuids" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: complete {
    type: yesno
    sql: ${TABLE}."complete" ;;
  }

  dimension: compliance_states {
    type: string
    sql: ${TABLE}."compliance_states" ;;
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

  dimension: data_issues {
    type: string
    sql: ${TABLE}."data_issues" ;;
  }

  dimension: download_cache_key {
    type: string
    sql: ${TABLE}."download_cache_key" ;;
  }

  dimension: download_content_type {
    type: string
    sql: ${TABLE}."download_content_type" ;;
  }

  dimension: download_file_name {
    type: string
    sql: ${TABLE}."download_file_name" ;;
  }

  dimension: download_file_size {
    type: number
    sql: ${TABLE}."download_file_size" ;;
  }

  dimension: download_processing {
    type: yesno
    sql: ${TABLE}."download_processing" ;;
  }

  dimension_group: download_updated {
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
    sql: ${TABLE}."download_updated_at" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."first_name" ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}."gender" ;;
  }

  dimension: ignore_delegate_alert {
    type: yesno
    sql: ${TABLE}."ignore_delegate_alert" ;;
  }

  dimension: invitation_id {
    type: string
    sql: ${TABLE}."invitation_id" ;;
  }

  dimension_group: invited {
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
    sql: ${TABLE}."invited_at" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."last_name" ;;
  }

  dimension: license_number {
    type: string
    sql: ${TABLE}."license_number" ;;
  }

  dimension: license_type {
    type: string
    sql: ${TABLE}."license_type" ;;
  }

  dimension: metadata {
    type: string
    sql: ${TABLE}."metadata" ;;
  }

  dimension: npi {
    type: string
    sql: ${TABLE}."npi" ;;
  }

  dimension: primary_specialty {
    type: string
    sql: ${TABLE}."primary_specialty" ;;
  }

  dimension: seeking_employment {
    type: yesno
    sql: ${TABLE}."seeking_employment" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: street_address {
    type: string
    sql: ${TABLE}."street_address" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension: unregistered_notifications {
    type: yesno
    sql: ${TABLE}."unregistered_notifications" ;;
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

  dimension: user_id {
    type: number
    sql: ${TABLE}."user_id" ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}."uuid" ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}."zip_code" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, first_name, last_name, download_file_name, provider_files.count]
  }
}
