variable "name" {
  description = "Name of the function."
  type        = string
}

variable "description" {
  description = "Description of the pub/sub function."
  type        = string
}

variable "project" {
  description = "Project ID."
  type        = string
}

variable "region" {
  description = "Region where function is living"
  default     = "EU"
}

variable "runtime" {
  description = "Runtime where function is operating."
  type        = string
  default     = "python310"
}

variable "available_memory" {
  description = "The amount of memory available for a function. See https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudfunctions2_function"
  type        = string
  default     = "2G"
}

variable "max_instances" {
  description = "Amount of instances of this function allowed to run simultaneously"
  type        = number
  default     = 10
}

variable "min_instances" {
  description = "Minimum amount of instances running at any given time."
  type        = number
  default     = 0
}

variable "environment" {
  description = "Environment variables to be forwarded to function."
  type        = map(string)
  default     = {}
}



variable "entry_point" {
  description = "Entry point method of the Cloud function."
  type        = string
  default     = "main_pubsub"
}

variable "timeout" {
  description = "Timeout of the Cloud Function."
  type        = number
  default     = 540
}

variable "vpc_connector" {
  description = "The name of the vpc connector needed (only relevant if a static IP is needed)"
  type        = string
  default     = ""
}

variable "alert_on_failure" {
  description = "The schedule on which to trigger the function."
  type        = bool
  default     = false
}

variable "alert_email_addresses" {
  description = "email addresses to send notifications to"
  type = map(string)
  default = {
    cnd_alerts = "alerting@cloudninedigital.nl"
  }
}

variable "source_folder_relative_path" {
  description = "relative path to cloud function code"
  type        = string
  default = ".."
}
