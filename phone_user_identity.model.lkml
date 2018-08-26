connection: "bq_test1"

# include all the views
include: "*.view"

datagroup: phone_user_identity_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: phone_user_identity_default_datagroup

explore: app_events {
  join: events {
    type: left_outer
    sql_on: ${app_events.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }
}

explore: app_labels {}

explore: events {}

explore: gender_age_test {}

explore: gender_age_train {}

explore: label_categories {}

explore: phone_brand_device_model {}
