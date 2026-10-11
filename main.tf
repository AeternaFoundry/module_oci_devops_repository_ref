resource "oci_devops_repository_ref" "devops_repository_refs" {
  for_each = var.devops_repository_refs

  ref_name      = each.value.ref_name
  ref_type      = each.value.ref_type
  repository_id = each.value.repository_id
  commit_id     = each.value.commit_id
  object_id     = each.value.object_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

