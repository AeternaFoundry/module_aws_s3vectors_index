resource "aws_s3vectors_index" "s3vectors_indices" {
  for_each = var.s3vectors_indices

  data_type          = each.value.data_type
  dimension          = each.value.dimension
  distance_metric    = each.value.distance_metric
  index_name         = each.value.index_name
  vector_bucket_name = each.value.vector_bucket_name
  region             = each.value.region
  tags               = each.value.tags

  dynamic "encryption_configuration" {
    for_each = each.value.encryption_configuration != null ? each.value.encryption_configuration : []
    content {
      kms_key_arn = encryption_configuration.value.kms_key_arn
      sse_type    = encryption_configuration.value.sse_type
    }
  }

  dynamic "metadata_configuration" {
    for_each = each.value.metadata_configuration != null ? each.value.metadata_configuration : []
    content {
      non_filterable_metadata_keys = metadata_configuration.value.non_filterable_metadata_keys
    }
  }
}

