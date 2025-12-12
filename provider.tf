provider "google"{
    project = "las-cloudlabs10"
    region="us-central1"
}

terraform{
    backend "gcs"{
        bucket=" remote_terraform_state"
    }
}

resource "google_storage_bucket" "gitops-test-bucket" {
  name = "gitops-test-bucket"
  location = "us-central1"

}


