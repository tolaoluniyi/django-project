resource "aws_iam_role" "mongodb_instance_role" {
  name = "mongodb-instance-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action    = "sts:AssumeRole"
      Effect    = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_instance_profile" "mongodb_instance_profile" {
  name = "mongodb-instance-profile"
  role = aws_iam_role.mongodb_instance_role.name
}

resource "aws_iam_role_policy" "mongodb_policy" {
  name = "mongodb-policy"
  role = aws_iam_role.mongodb_instance_role.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "s3:PutObject",
          "s3:GetObject"
        ]
        Resource = "arn:aws:s3:::mongodb-backup-bucket/*"
      },
      {
        Effect = "Allow"
        Action = [
          "s3:ListBucket"
        ]
        Resource = "arn:aws:s3:::mongodb-backup-bucket"
      },
      {
        Effect = "Allow"
        Action = "ec2:*"
        Resource = "*"
      }
    ]
  })
}
