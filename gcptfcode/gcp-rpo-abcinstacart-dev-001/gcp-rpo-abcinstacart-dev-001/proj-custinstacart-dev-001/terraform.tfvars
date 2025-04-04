project_id = "proj-dtinstacart-dev-001"

# service accounts
service_account = [
    {
        id = "sa-dtinstacart"
        display_name = "sa-dtinstacart"
        create_sa_key = false,
        description= "",
    },
]
# GCS Bucket
storage_buckets = [
    {
        bucket_name = "stdinstacartdev001",
        gcs_location = "us-east1",
        force_destroy = false,

        storage_class = "STANDARD",
        labels = {
            "env" = "dev"
        },
        uniform_bucket_level_access = true,
        versioning = true,
        lifecycle_rule = [],
        website ={},
        retention_policy ={},
        role_bind = []
    }
]