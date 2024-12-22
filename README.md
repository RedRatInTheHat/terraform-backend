# Создание bucket'а для Terraform State

[main.tf](main.tf) – создание провайдера для yc.<br/>
[bucket.tf](bucket.tf) – создание собственно bucket'а.<br/>
[variables.tf](variables.tf) – настройки создания bucket'а.<br/>

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | 0.135.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_iam_service_account_static_access_key.sa-static-key](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/iam_service_account_static_access_key) | resource |
| [yandex_storage_bucket.terraform-bucket](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/storage_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | Name of the storage bucket. | `string` | `"terraform-state-netology-diploma-ip"` | no |
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id | `string` | n/a | yes |
| <a name="input_default_zone"></a> [default\_zone](#input\_default\_zone) | https://cloud.yandex.ru/docs/overview/concepts/geo-scope | `string` | `"ru-central1-a"` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id | `string` | n/a | yes |
| <a name="input_max_bucket_size"></a> [max\_bucket\_size](#input\_max\_bucket\_size) | Maximum size of the storage bucket in bytes. | `number` | `1048576` | no |
| <a name="input_sa_key_file_path"></a> [sa\_key\_file\_path](#input\_sa\_key\_file\_path) | The path to the service account key file | `string` | `"~/key.json"` | no |
| <a name="input_service_account_id"></a> [service\_account\_id](#input\_service\_account\_id) | Service account ID for the static access key. | `string` | n/a | yes |
| <a name="input_static_access_key_description"></a> [static\_access\_key\_description](#input\_static\_access\_key\_description) | Description for the static access key. | `string` | `"static access key for object storage"` | no |

## Outputs

No outputs.