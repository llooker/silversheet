view: facilities {
  sql_table_name: public.facilities ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: accreditation_standard {
    type: string
    sql: ${TABLE}."accreditation_standard" ;;
  }

  dimension_group: activated {
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
    sql: ${TABLE}."activated_at" ;;
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

  dimension: credential_manager_first_name {
    type: string
    sql: ${TABLE}."credential_manager_first_name" ;;
  }

  dimension: credential_manager_last_name {
    type: string
    sql: ${TABLE}."credential_manager_last_name" ;;
  }

  dimension: enterprise_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."enterprise_id" ;;
  }

  dimension: facility_group_id {
    type: number
    sql: ${TABLE}."facility_group_id" ;;
  }

  dimension: hospital {
    type: yesno
    sql: ${TABLE}."hospital" ;;
  }

  dimension: metadata {
    type: string
    sql: ${TABLE}."metadata" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: npdb_group_id {
    type: number
    sql: ${TABLE}."npdb_group_id" ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}."phone_number" ;;
  }

  dimension: provider_file_counters {
    type: string
    sql: ${TABLE}."provider_file_counters" ;;
  }

  dimension: provider_statuses {
    type: string
    sql: ${TABLE}."provider_statuses" ;;
  }

  dimension: registration_id {
    type: number
    sql: ${TABLE}."registration_id" ;;
  }

  dimension_group: sanction_mailer_sent {
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
    sql: ${TABLE}."sanction_mailer_sent_at" ;;
  }

  dimension: settings {
    type: string
    sql: ${TABLE}."settings" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: street_address {
    type: string
    sql: ${TABLE}."street_address" ;;
  }

  dimension: tier {
    type: string
    sql: ${TABLE}."tier" ;;
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

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}."zip_code" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      credential_manager_last_name,
      name,
      credential_manager_first_name,
      enterprises.id,
      enterprises.name,
      enterprises.logo_file_name
    ]
  }
}
