view: enterprises {
  sql_table_name: public.enterprises ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: accreditation_standard {
    type: string
    sql: ${TABLE}."accreditation_standard" ;;
  }

  dimension: allow_facility_privilege_templates {
    type: yesno
    sql: ${TABLE}."allow_facility_privilege_templates" ;;
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
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}."created_at" ;;
  }

  dimension: logo_content_type {
    type: string
    sql: ${TABLE}."logo_content_type" ;;
  }

  dimension: logo_file_name {
    type: string
    sql: ${TABLE}."logo_file_name" ;;
  }

  dimension: logo_file_size {
    type: number
    sql: ${TABLE}."logo_file_size" ;;
  }

  dimension_group: logo_updated {
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
    sql: ${TABLE}."logo_updated_at" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}."phone_number" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
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
  }

  measure: count {
    type: count
    drill_fields: [id, name, logo_file_name, facilities.count, provider_files.count]
  }
}
