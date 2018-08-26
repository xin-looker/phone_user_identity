view: app_labels {
  sql_table_name: phone_user_identity.app_labels ;;

  dimension: app_id {
    type: number
    sql: ${TABLE}.app_id ;;
  }

  dimension: label_id {
    type: number
    sql: ${TABLE}.label_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
