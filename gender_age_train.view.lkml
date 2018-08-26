view: gender_age_train {
  sql_table_name: phone_user_identity.gender_age_train ;;

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: device_id {
    type: number
    sql: ${TABLE}.device_id ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}.`group` ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
