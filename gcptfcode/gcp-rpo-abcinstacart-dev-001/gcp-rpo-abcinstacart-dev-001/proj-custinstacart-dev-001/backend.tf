terraform {
    backend "gcs" {
        bucket = "sttfbackendprojdevus001"
        prefix = "proj-dtinstacart-dev-001"

    }
    required_providers {
        google = {
            source = "hashicorp/google"
            version = "~> 5.15.0"
        }
        google-beta {
            source = "hashicorp/google-beta"
            version = "~> 5.15.0"
        }
    }
    reuired_version = "1.9.8"
}