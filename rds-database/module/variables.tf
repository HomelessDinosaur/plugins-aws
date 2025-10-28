variable "rds_instance_address" {
  type        = string
  description = "Hostname of the RDS instance"
}

variable "rds_instance_port" {
  type        = number
  description = "Port number the RDS instance accepts connections on"
}

variable "codebuild_project_name" {
  type        = string
  description = "Name of the CodeBuild project for database operations"
}

variable "database_name" {
  type        = string
  description = "Name of the database to create"
  default     = null
}

variable "database_owner" {
  type        = string
  description = "Username for the database owner role"
  default     = null
}

variable "suga" {
  type = object({
    name     = string
    stack_id = string
    env_var_key = string
    services = map(object({
      actions = list(string)
      identities = map(object({
        exports = map(string)
      }))
    }))
  })
}
