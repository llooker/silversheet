connection: "ss_staging"

include: "*.view.lkml"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: provider_files {
  label: "Provider Files, Facilities, Providers & Enterprises"
  access_filter: {
    field: facilities.name
    user_attribute: facilities_name
  }

  join: facilities {
    relationship: many_to_one
    type: left_outer
    sql_on: ${provider_files.facility_id} = ${facilities.id} ;;
  }
  join: providers {
    relationship: many_to_one
    type: left_outer
    sql_on: ${provider_files.provider_id} = ${providers.id};;
  }
  join: enterprises {
    relationship: many_to_one
    type: left_outer
    sql_on: ${provider_files.enterprise_id} = ${enterprises.id}  ;;
  }
}

# explore: provider_files {
#   join: expirables {}
# }


# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
