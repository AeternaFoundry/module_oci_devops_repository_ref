variable "devops_repository_refs" {
  description = <<EOT
Map of devops_repository_refs, attributes below
Required:
    - ref_name
    - ref_type
    - repository_id
Optional:
    - commit_id
    - object_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    ref_name      = string
    ref_type      = string
    repository_id = string
    commit_id     = optional(string)
    object_id     = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.devops_repository_refs : (
        contains([for v in ["BRANCH", "TAG"] : lower(v)], lower(v.ref_type))
      )
    ])
    error_message = "must be one of: \"BRANCH\", \"TAG\""
  }
}

