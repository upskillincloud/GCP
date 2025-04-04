module "cloud_storage_bucket" {

    source = "../dlt-gcp-terraform-modules/storage"
    project_id = var.project_id
    for_each = {for eachbucket in var.storage_buckets : eachbucket.bucket_name => eachbucket}

    bucket_name = each.value.bucket_name
    location = each.value.location
    force_destroy = each.value.force_destroy
    storage_class = each.value.storage_class
    labels = each.value.labels
    uniform_bucket_level_access = each.value.uniform_bucket_level_access
    website = lookup(each.value, "website", {})
    lifecycle_rule = lookup(each.value, "lifecycle_rule", [])
    versioning = each.value.versioning
    retention_policy = lookup(each.value, "retention_policy", {})
    kms_key_name = each.value.gcs_kms_key_name
    role_bind = lookup(each.value, "role_bind", [])
}