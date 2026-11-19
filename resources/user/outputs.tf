output "arn" {
  value       = aws_iam_user.this.arn
  description = "The ARN assigned by AWS for this user."
}

output "id" {
  value       = aws_iam_user.this.id
  description = "The user's name."
}

output "name" {
  value       = aws_iam_user.this.name
  description = "The user's name."
}

output "tags_all" {
  value       = aws_iam_user.this.tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "unique_id" {
  value       = aws_iam_user.this.unique_id
  description = "The unique ID assigned by AWS."
}
