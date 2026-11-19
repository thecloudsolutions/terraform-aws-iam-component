output "arn" {
  value       = aws_iam_instance_profile.this.arn
  description = "ARN assigned by AWS to the instance profile."
}

output "create_date" {
  value       = aws_iam_instance_profile.this.create_date
  description = "Creation timestamp of the instance profile."
}

output "id" {
  value       = aws_iam_instance_profile.this.id
  description = "Instance profile's ID."
}

output "tags_all" {
  value       = aws_iam_instance_profile.this.tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "unique_id" {
  value       = aws_iam_instance_profile.this.unique_id
  description = "Unique ID assigned by AWS."
}
