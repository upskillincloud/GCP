module "service_account_creation"{
    source = "../dlt-gcp-terraform-modules/service-account"
    project_id = var.project_id
    for_each = { for eachServiceAccount in var.secret_account : eachServiceAccount.id => eachServiceAccount }
    sa_id = each.value.iddisplay_name = each.value.display_name
    create_sa_key = each.value.create_sa_key
    description = each.value.description
}