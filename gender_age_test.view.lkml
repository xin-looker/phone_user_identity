view: gender_age_test {
  sql_table_name: phone_user_identity.gender_age_test ;;

  dimension: device_id {
    type: number
    sql: ${TABLE}.device_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
