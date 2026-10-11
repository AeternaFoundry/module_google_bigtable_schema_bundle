resource "google_bigtable_schema_bundle" "bigtable_schema_bundles" {
  for_each = var.bigtable_schema_bundles

  schema_bundle_id = each.value.schema_bundle_id
  deletion_policy  = each.value.deletion_policy
  ignore_warnings  = each.value.ignore_warnings
  instance         = each.value.instance
  project          = each.value.project
  table            = each.value.table

  proto_schema {
    proto_descriptors = each.value.proto_schema.proto_descriptors
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

