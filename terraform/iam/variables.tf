variable "role_name" {
  description = "The name of the IAM role."
  default     = "mongodb-instance-role"
}

variable "instance_profile_name" {
  description = "The name of the IAM instance profile."
  default     = "mongodb-instance-profile"
}
