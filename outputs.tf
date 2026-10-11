output "devops_repository_refs_id" {
  description = "Map of id values across all devops_repository_refs, keyed the same as var.devops_repository_refs except keys with no id are omitted"
  value       = { for k, v in oci_devops_repository_ref.devops_repository_refs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "devops_repository_refs_commit_id" {
  description = "Map of commit_id values across all devops_repository_refs, keyed the same as var.devops_repository_refs except keys with no commit_id are omitted"
  value       = { for k, v in oci_devops_repository_ref.devops_repository_refs : k => v.commit_id if v.commit_id != null && length(v.commit_id) > 0 }
}
output "devops_repository_refs_defined_tags" {
  description = "Map of defined_tags values across all devops_repository_refs, keyed the same as var.devops_repository_refs except keys with no defined_tags are omitted"
  value       = { for k, v in oci_devops_repository_ref.devops_repository_refs : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "devops_repository_refs_freeform_tags" {
  description = "Map of freeform_tags values across all devops_repository_refs, keyed the same as var.devops_repository_refs except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_devops_repository_ref.devops_repository_refs : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "devops_repository_refs_full_ref_name" {
  description = "Map of full_ref_name values across all devops_repository_refs, keyed the same as var.devops_repository_refs except keys with no full_ref_name are omitted"
  value       = { for k, v in oci_devops_repository_ref.devops_repository_refs : k => v.full_ref_name if v.full_ref_name != null && length(v.full_ref_name) > 0 }
}
output "devops_repository_refs_object_id" {
  description = "Map of object_id values across all devops_repository_refs, keyed the same as var.devops_repository_refs except keys with no object_id are omitted"
  value       = { for k, v in oci_devops_repository_ref.devops_repository_refs : k => v.object_id if v.object_id != null && length(v.object_id) > 0 }
}
output "devops_repository_refs_ref_name" {
  description = "Map of ref_name values across all devops_repository_refs, keyed the same as var.devops_repository_refs except keys with no ref_name are omitted"
  value       = { for k, v in oci_devops_repository_ref.devops_repository_refs : k => v.ref_name if v.ref_name != null && length(v.ref_name) > 0 }
}
output "devops_repository_refs_ref_type" {
  description = "Map of ref_type values across all devops_repository_refs, keyed the same as var.devops_repository_refs except keys with no ref_type are omitted"
  value       = { for k, v in oci_devops_repository_ref.devops_repository_refs : k => v.ref_type if v.ref_type != null && length(v.ref_type) > 0 }
}
output "devops_repository_refs_repository_id" {
  description = "Map of repository_id values across all devops_repository_refs, keyed the same as var.devops_repository_refs except keys with no repository_id are omitted"
  value       = { for k, v in oci_devops_repository_ref.devops_repository_refs : k => v.repository_id if v.repository_id != null && length(v.repository_id) > 0 }
}

