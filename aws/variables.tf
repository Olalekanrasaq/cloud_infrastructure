variable "team" {
  description = "The team responsible for the deployment"
  type        = string
  default     = "SoloDeveloper"
}

variable "environment" {
  description = "The environment for the deployment"
  type        = string
  default     = "dev"
}

variable "versioning" {
  description = "versioning status for the S3 bucket (Enabled/Disabled)"
  type        = string
  default     = "Disabled"
}


