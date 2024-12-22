variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "sa_key_file_path" {
  type        = string
  default     = "~/key.json"
  description = "The path to the service account key file"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

# bucket

variable "service_account_id" {
  type        = string
  description = "Service account ID for the static access key."
}

variable "static_access_key_description" {
  type        = string
  default     = "static access key for object storage"
  description = "Description for the static access key."
}

variable "bucket_name" {
  type        = string
  default     = "terraform-state-netology-diploma-ip"
  description = "Name of the storage bucket."
}

variable "max_bucket_size" {
  type        = number
  default     = 1048576 // 1MB
  description = "Maximum size of the storage bucket in bytes."
}