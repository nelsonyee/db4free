view: project {
  sql_table_name: nelson_looker.project ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.Customer ;;
    link: {
      label: "Google"
      url: "http://www.google.com/search?q={{ value }}"
      icon_url: "http://google.com/favicon.ico"
    }
  }

  dimension: end_date {
    type: string
    sql: ${TABLE}.EndDate ;;
  }

  dimension: hours_remaining {
    type: number
    sql: ${TABLE}.HoursRemaining ;;
  }

  dimension: percent_complete {
    type: number
    sql: ${TABLE}.PercentComplete ;;
  }

  dimension: planned_hours {
    type: number
    sql: ${TABLE}.PlannedHours ;;
  }

  dimension: primary_analyst {
    type: number
    sql: ${TABLE}.PrimaryAnalyst ;;
  }

  dimension: project_manager {
    type: number
    sql: ${TABLE}.ProjectManager ;;
  }



  dimension: project_name {
    type: string
    sql: ${TABLE}.ProjectName ;;
    action: {
      label: "Update Project Name"
      url: "https://e247c1.pipegears.io/projects"  # Replace [yourlink]
      param: {
        name: "auth_code"
        value: "abc123456"
      }
      user_attribute_param: {
        user_attribute: id
        name: "user_id"
      }
      param: {
        name: "project_name"
        value: "{{ value }}"
      }
      param: {
        name: "project_id"
        value: "{{ project.id._value }}"
      }
      form_param: {
        label: "New Project Name"
        name: "new_project_name"
        description: "Update Project Name"
        type: string
        required: no
      }
    }
  }

  dimension: stage {
    type: string
    sql: ${TABLE}.Stage ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.StartDate ;;
  }

  dimension: total_billable_hours {
    type: number
    sql: ${TABLE}.TotalBillableHours ;;
  }

  measure: count {
    type: count
    drill_fields: [id, project_name]
  }
}
