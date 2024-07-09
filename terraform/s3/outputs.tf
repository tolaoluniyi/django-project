output "s3_bucket_name" {
  value = aws_s3_bucket.mongodb_backup.bucket
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.mongodb_backup.arn
}
