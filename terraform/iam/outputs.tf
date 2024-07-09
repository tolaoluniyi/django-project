output "iam_role_arn" {
  value = aws_iam_role.mongodb_instance_role.arn
}

output "iam_instance_profile_name" {
  value = aws_iam_instance_profile.mongodb_instance_profile.name
}
