output "id" {
  value       = data.aws_iam_policy_document.this.id
  description = "The iam policy document id."
}

output "json" {
  value       = data.aws_iam_policy_document.this.json
  description = "Standard JSON policy document rendered based on the arguments above."
}
