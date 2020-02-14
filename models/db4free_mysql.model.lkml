connection: "db4free_mysql"

# include all the views
#
include: "/views/**/*.view"

datagroup: db4free_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: db4free_default_datagroup

explore: project {}
