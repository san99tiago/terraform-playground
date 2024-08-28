variable "environment" {
  type        = string
  description = "Environment for the deployment"
  default     = "dev"
}

variable "main_resources_name" {
  type        = string
  description = "Main resources across the deployment"
  default     = "curso-devops-python"
}
