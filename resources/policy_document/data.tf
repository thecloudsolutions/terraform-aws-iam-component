data "aws_iam_policy_document" "this" {
  override_policy_documents = var.override_policy_documents
  policy_id                 = var.policy_id
  source_policy_documents   = var.source_policy_documents
  version                   = var.policy_version

  dynamic "statement" {
    for_each = var.statement != null ? var.statement : []
    content {
      actions       = lookup(statement.value, "actions", null)
      effect        = lookup(statement.value, "effect", null)
      not_actions   = lookup(statement.value, "not_actions", null)
      not_resources = lookup(statement.value, "not_resources", null)
      resources     = lookup(statement.value, "resources", null)
      sid           = lookup(statement.value, "sid", null)

      dynamic "condition" {
        for_each = statement.value.condition
        content {
          test     = condition.value.test
          variable = condition.value.variable
          values   = condition.value.values
        }
      }

      dynamic "principals" {
        for_each = statement.value.principals
        content {
          identifiers = principals.value.identifiers
          type        = principals.value.type
        }
      }

      dynamic "not_principals" {
        for_each = statement.value.not_principals
        content {
          identifiers = not_principals.value.identifiers
          type        = not_principals.value.type
        }
      }
    }
  }
}
