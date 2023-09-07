variable "application" {
  description = "Application name and/or sub-project identifier"
  type        = string
  default     = "N/A"
  validation {
    condition     = can(regex(".*", var.application))
    error_message = "This should always be populated but may not be applicable"
  }
}

variable "creator" {
  description = "The IAM user/role that created this resource"
  type        = string
  default     = "terraform"
  validation {
    condition     = can(regex(".*", var.creator))
    error_message = "The creator value should always be set but may deviate from 'terraform'"
  }
}

variable "created" {
  description = "The date that the resource was created in the format: %Y-%m-%d"
  type        = string
  default     = "1977-01-01"
  validation {
    condition     = can(regex("^(\\d{4})(-(0[1-9]|1[0-2])(-([12]\\d|0[1-9]|3[01])))$", var.created))
    error_message = "The default should automatically be overwritten/injected by terraform"
  }
}

variable "actor" {
  description = "The GitHub user that deployed the resource"
  type        = string
  default     = "arn:aws:iam::012345678910:role/terraform-role"
  validation {
    condition     = can(regex(".*", var.actor))
    error_message = "This should automatically be injected by the GitHub action"
  }
}

variable "environment" {
  description = "The environment: [test|production|staging]"
  type        = string
  default     = "test"
  validation {
    condition     = can(regex("(^test$)|(^production$)(^staging$)|", var.environment))
    error_message = "The environment value must be specified as: [ test | production | staging ]"
  }
}

variable "billing" {
  description = "The organisation/entity responsible for costs related to this resource"
  type        = string
  default     = "OS-Climate"
  validation {
    condition     = can(regex(".*", var.billing))
    error_message = "Defaults to the project name, but could be allocated to a more specific entity"
  }
}

variable "origin" {
  description = "The repository location where this resource is managed/codified"
  type        = string
  default     = "github.com/os-climate/terraform"
  validation {
    condition     = can(regex(".*", var.origin))
    error_message = "The repository is usually in the OS-Climate GitHub organisation"
  }
}
