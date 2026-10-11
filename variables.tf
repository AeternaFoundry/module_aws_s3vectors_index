variable "s3vectors_indices" {
  description = <<EOT
Map of s3vectors_indices, attributes below
Required:
    - data_type
    - dimension
    - distance_metric
    - index_name
    - vector_bucket_name
Optional:
    - region
    - tags
    - encryption_configuration (block):
        - kms_key_arn (optional)
        - sse_type (optional)
    - metadata_configuration (block):
        - non_filterable_metadata_keys (required)
EOT

  type = map(object({
    data_type          = string
    dimension          = number
    distance_metric    = string
    index_name         = string
    vector_bucket_name = string
    region             = optional(string)
    tags               = optional(map(string))
    encryption_configuration = optional(list(object({
      kms_key_arn = optional(string)
      sse_type    = optional(string)
    })))
    metadata_configuration = optional(list(object({
      non_filterable_metadata_keys = set(string)
    })))
  }))
}

