resource "aws_s3_bucket" "mongodb_backup" {
  bucket = "mongodb-backup-bucket"

  acl = "public-read" 

  versioning {
    enabled = true
  }

  tags = {
    Name        = "mongodb-backup-bucket"
    Environment = "Dev"
  }
}
