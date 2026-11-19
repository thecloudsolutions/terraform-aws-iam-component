resource "aws_iam_policy" "this" {
  delay_after_policy_creation_in_ms = var.delay_after_policy_creation_in_ms
  description                       = var.description
  name                              = var.name
  name_prefix                       = var.name_prefix
  path                              = var.path
  policy                            = var.policy

  tags = var.tags
}
