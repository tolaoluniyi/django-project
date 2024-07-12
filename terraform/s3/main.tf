resource "aws_s3_bucket" "mongodb_backup" {
  bucket = "mongodb-backup-bucket"
}

resource "aws_s3_bucket_acl" "mongodb_backup_acl" {
  bucket = aws_s3_bucket.mongodb_backup.id
  acl    = "private"  # Adjust as necessary
}

resource "aws_s3_bucket_versioning" "mongodb_backup_versioning" {
  bucket = aws_s3_bucket.mongodb_backup.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_tagging" "mongodb_backup_tagging" {
  bucket = aws_s3_bucket.mongodb_backup.id

  tag_set = {
    Name        = "mongodb-backup-bucket"
    Environment = "Dev"
  }
}
