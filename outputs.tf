output "s3vectors_indices_creation_time" {
  description = "Map of creation_time values across all s3vectors_indices, keyed the same as var.s3vectors_indices"
  value       = { for k, v in aws_s3vectors_index.s3vectors_indices : k => v.creation_time if v.creation_time != null && length(v.creation_time) > 0 }
}
output "s3vectors_indices_data_type" {
  description = "Map of data_type values across all s3vectors_indices, keyed the same as var.s3vectors_indices"
  value       = { for k, v in aws_s3vectors_index.s3vectors_indices : k => v.data_type if v.data_type != null && length(v.data_type) > 0 }
}
output "s3vectors_indices_dimension" {
  description = "Map of dimension values across all s3vectors_indices, keyed the same as var.s3vectors_indices"
  value       = { for k, v in aws_s3vectors_index.s3vectors_indices : k => v.dimension if v.dimension != null }
}
output "s3vectors_indices_distance_metric" {
  description = "Map of distance_metric values across all s3vectors_indices, keyed the same as var.s3vectors_indices"
  value       = { for k, v in aws_s3vectors_index.s3vectors_indices : k => v.distance_metric if v.distance_metric != null && length(v.distance_metric) > 0 }
}
output "s3vectors_indices_encryption_configuration" {
  description = "Map of encryption_configuration values across all s3vectors_indices, keyed the same as var.s3vectors_indices"
  value       = { for k, v in aws_s3vectors_index.s3vectors_indices : k => v.encryption_configuration if v.encryption_configuration != null && length(v.encryption_configuration) > 0 }
}
output "s3vectors_indices_index_arn" {
  description = "Map of index_arn values across all s3vectors_indices, keyed the same as var.s3vectors_indices"
  value       = { for k, v in aws_s3vectors_index.s3vectors_indices : k => v.index_arn if v.index_arn != null && length(v.index_arn) > 0 }
}
output "s3vectors_indices_index_name" {
  description = "Map of index_name values across all s3vectors_indices, keyed the same as var.s3vectors_indices"
  value       = { for k, v in aws_s3vectors_index.s3vectors_indices : k => v.index_name if v.index_name != null && length(v.index_name) > 0 }
}
output "s3vectors_indices_metadata_configuration" {
  description = "Map of metadata_configuration values across all s3vectors_indices, keyed the same as var.s3vectors_indices"
  value       = { for k, v in aws_s3vectors_index.s3vectors_indices : k => v.metadata_configuration if v.metadata_configuration != null && length(v.metadata_configuration) > 0 }
}
output "s3vectors_indices_region" {
  description = "Map of region values across all s3vectors_indices, keyed the same as var.s3vectors_indices"
  value       = { for k, v in aws_s3vectors_index.s3vectors_indices : k => v.region if v.region != null && length(v.region) > 0 }
}
output "s3vectors_indices_tags" {
  description = "Map of tags values across all s3vectors_indices, keyed the same as var.s3vectors_indices"
  value       = { for k, v in aws_s3vectors_index.s3vectors_indices : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "s3vectors_indices_tags_all" {
  description = "Map of tags_all values across all s3vectors_indices, keyed the same as var.s3vectors_indices"
  value       = { for k, v in aws_s3vectors_index.s3vectors_indices : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "s3vectors_indices_vector_bucket_name" {
  description = "Map of vector_bucket_name values across all s3vectors_indices, keyed the same as var.s3vectors_indices"
  value       = { for k, v in aws_s3vectors_index.s3vectors_indices : k => v.vector_bucket_name if v.vector_bucket_name != null && length(v.vector_bucket_name) > 0 }
}

