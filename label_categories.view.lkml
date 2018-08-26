view: label_categories {
  sql_table_name: phone_user_identity.label_categories ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
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
