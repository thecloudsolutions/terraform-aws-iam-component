output "arn" {
  value       = aws_iam_openid_connect_provider.this.arn
  description = "The ARN assigned by AWS for this provider."
}

output "tags_all" {
  value       = aws_iam_openid_connect_provider.this.tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}
