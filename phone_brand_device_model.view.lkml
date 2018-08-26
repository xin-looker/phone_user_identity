view: phone_brand_device_model {
  sql_table_name: phone_user_identity.phone_brand_device_model ;;

  dimension: device_id {
    type: number
    sql: ${TABLE}.device_id ;;
  }

  dimension: device_model {
    type: string
    sql: ${TABLE}.device_model ;;
  }

  dimension: phone_brand {
    type: string
    sql: ${TABLE}.phone_brand ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
