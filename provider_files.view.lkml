view: provider_files {
  sql_table_name: public.provider_files ;;

  dimension: original_provider_file_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."original_provider_file_id" ;;
  }

  dimension_group: active_on {
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
    sql: ${TABLE}."active_on_date" ;;
  }

  dimension: api_status {
    type: string
    sql: ${TABLE}."api_status" ;;
  }

  dimension_group: archived {
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
    sql: ${TABLE}."archived_at" ;;
  }

  dimension_group: born {
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
    sql: ${TABLE}."born_on" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: clinical {
    type: yesno
    sql: ${TABLE}."clinical" ;;
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

  dimension: credentials_state {
    type: string
    sql: ${TABLE}."credentials_state" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: encrypted_ssn {
    type: string
    sql: ${TABLE}."encrypted_ssn" ;;
  }

  dimension: encrypted_ssn_iv {
    type: string
    sql: ${TABLE}."encrypted_ssn_iv" ;;
  }

  dimension: encrypted_ssn_salt {
    type: string
    sql: ${TABLE}."encrypted_ssn_salt" ;;
  }

  dimension: enterprise_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."enterprise_id" ;;
  }

  dimension: facility_id {
    type: number
    sql: ${TABLE}."facility_id" ;;
  }

  dimension: facility_status {
    type: string
    sql: ${TABLE}."facility_status" ;;
  }

  dimension: fax_number {
    type: string
    sql: ${TABLE}."fax_number" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: incomplete_sections {
    type: string
    sql: ${TABLE}."incomplete_sections" ;;
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

  dimension: inviter_id {
    type: number
    sql: ${TABLE}."inviter_id" ;;
  }

  dimension: pager_number {
    type: string
    sql: ${TABLE}."pager_number" ;;
  }

  dimension: pending_contact_changes {
    type: yesno
    sql: ${TABLE}."pending_contact_changes" ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}."phone_number" ;;
  }

  dimension: pokitdok_metrics {
    type: string
    sql: ${TABLE}."pokitdok_metrics" ;;
  }

  dimension: primary_specialty {
    type: string
    sql: ${TABLE}."primary_specialty" ;;
  }

  dimension_group: privileged {
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
    sql: ${TABLE}."privileged_on" ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."provider_id" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
    map_layer_name: us_states
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: street_address {
    type: string
    sql: ${TABLE}."street_address" ;;
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
    map_layer_name: us_zipcode_tabulation_areas
  }

  ######### Measures#########

  measure: count_original_provider_file_id {
    type: count
    drill_fields: [detail*]
  }

  measure: count_of_providers {
    type: count
    sql: ${provider_id} ;;
    drill_fields: [detail*]
  }

  measure: count_of_facilities {
    type: count
    sql: ${facility_id} ;;
    drill_fields: [detail*]
  }

  measure: count_of_enterprises {
    type: count
    sql: ${enterprise_id} ;;
    drill_fields: [detail*]
  }

  ######### Sets of fields for drilling #########

  set: detail {
    fields: [
      original_provider_file_id,
      enterprise_id,
      facility_id,
      facilities.name,
      facility_status,
      city,
      state,
      zip_code
    ]
  }
}
