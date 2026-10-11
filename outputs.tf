output "bigtable_schema_bundles_id" {
  description = "Map of id values across all bigtable_schema_bundles, keyed the same as var.bigtable_schema_bundles except keys with no id are omitted"
  value       = { for k, v in google_bigtable_schema_bundle.bigtable_schema_bundles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bigtable_schema_bundles_deletion_policy" {
  description = "Map of deletion_policy values across all bigtable_schema_bundles, keyed the same as var.bigtable_schema_bundles except keys with no deletion_policy are omitted"
  value       = { for k, v in google_bigtable_schema_bundle.bigtable_schema_bundles : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "bigtable_schema_bundles_etag" {
  description = "Map of etag values across all bigtable_schema_bundles, keyed the same as var.bigtable_schema_bundles except keys with no etag are omitted"
  value       = { for k, v in google_bigtable_schema_bundle.bigtable_schema_bundles : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "bigtable_schema_bundles_ignore_warnings" {
  description = "Map of ignore_warnings values across all bigtable_schema_bundles, keyed the same as var.bigtable_schema_bundles except keys with no ignore_warnings are omitted"
  value       = { for k, v in google_bigtable_schema_bundle.bigtable_schema_bundles : k => v.ignore_warnings if v.ignore_warnings != null }
}
output "bigtable_schema_bundles_instance" {
  description = "Map of instance values across all bigtable_schema_bundles, keyed the same as var.bigtable_schema_bundles except keys with no instance are omitted"
  value       = { for k, v in google_bigtable_schema_bundle.bigtable_schema_bundles : k => v.instance if v.instance != null && length(v.instance) > 0 }
}
output "bigtable_schema_bundles_name" {
  description = "Map of name values across all bigtable_schema_bundles, keyed the same as var.bigtable_schema_bundles except keys with no name are omitted"
  value       = { for k, v in google_bigtable_schema_bundle.bigtable_schema_bundles : k => v.name if v.name != null && length(v.name) > 0 }
}
output "bigtable_schema_bundles_project" {
  description = "Map of project values across all bigtable_schema_bundles, keyed the same as var.bigtable_schema_bundles except keys with no project are omitted"
  value       = { for k, v in google_bigtable_schema_bundle.bigtable_schema_bundles : k => v.project if v.project != null && length(v.project) > 0 }
}
output "bigtable_schema_bundles_proto_schema" {
  description = "Map of proto_schema values across all bigtable_schema_bundles, keyed the same as var.bigtable_schema_bundles except keys with no proto_schema are omitted"
  value       = { for k, v in google_bigtable_schema_bundle.bigtable_schema_bundles : k => one(v.proto_schema) if v.proto_schema != null && length(v.proto_schema) > 0 }
}
output "bigtable_schema_bundles_schema_bundle_id" {
  description = "Map of schema_bundle_id values across all bigtable_schema_bundles, keyed the same as var.bigtable_schema_bundles except keys with no schema_bundle_id are omitted"
  value       = { for k, v in google_bigtable_schema_bundle.bigtable_schema_bundles : k => v.schema_bundle_id if v.schema_bundle_id != null && length(v.schema_bundle_id) > 0 }
}
output "bigtable_schema_bundles_table" {
  description = "Map of table values across all bigtable_schema_bundles, keyed the same as var.bigtable_schema_bundles except keys with no table are omitted"
  value       = { for k, v in google_bigtable_schema_bundle.bigtable_schema_bundles : k => v.table if v.table != null && length(v.table) > 0 }
}

