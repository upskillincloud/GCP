module "poject_iam_binding" {
    source = "../dlt-gcp-terraform-modules/iam-binding-project"

    project_id = var.project_id
    role_bind = yamldecode(file("./role_bind.yaml"))
}