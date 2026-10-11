variable "bigtable_schema_bundles" {
  description = <<EOT
Map of bigtable_schema_bundles, attributes below
Required:
    - schema_bundle_id
    - proto_schema (block):
        - proto_descriptors (required)
Optional:
    - deletion_policy
    - ignore_warnings
    - instance
    - project
    - table
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    schema_bundle_id = string
    deletion_policy  = optional(string)
    ignore_warnings  = optional(bool)
    instance         = optional(string)
    project          = optional(string)
    table            = optional(string)
    proto_schema = object({
      proto_descriptors = string
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

