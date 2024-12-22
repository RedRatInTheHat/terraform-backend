resource "yandex_iam_service_account_static_access_key" "sa-static-key" {
  service_account_id = var.service_account_id
  description        = var.static_access_key_description
}

resource "yandex_storage_bucket" "terraform-bucket" {
  access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  bucket     = var.bucket_name
  max_size   = var.max_bucket_size
  folder_id  = var.folder_id
}
