view: app_events {
  sql_table_name: phone_user_identity.app_events ;;

  dimension: app_id {
    type: number
    sql: ${TABLE}.app_id ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.event_id ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_installed {
    type: number
    sql: ${TABLE}.is_installed ;;
  }

  measure: count {
    type: count
    drill_fields: [events.event_id]
  }
}
