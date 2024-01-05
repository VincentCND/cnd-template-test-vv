resource "google_storage_bucket" "tfstate" {
  name          = "cnd_template_test_vv-${var.project}-tfstate"
  project       = var.project
  force_destroy = false
  location      = "EU"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}
