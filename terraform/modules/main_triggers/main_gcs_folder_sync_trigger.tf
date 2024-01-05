module "gcs_folder_sync" {
  source = "./modules/gcs_folder_sync"
  bucket = var.bucket
  gcs_bucket_file_path = ""
  gcs_local_source_path = "../cnd_template_test_vv/SQL/sql_scripts"
}