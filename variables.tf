# target roles

variable "principals" {
  description = "The map of trust relationship to allow them to assume roles in this role"
  default = {
    aws = ["336686831133"]
    service = [""]
    federated = [""]
  }
}

variable "policy_arn" {
  description = "A list of full arn of iam policies to attach this role"
  default     = []
}

variable "session_duration" {
  description = "A value for maximum time of session duration in seconds (default 1h). This setting can have a value from 1 hour to 12 hours"
  default     = "3600"
}

# description
variable "name" {
  description = "The logical name of role"
  default     = "role"
}

variable "stack" {
  description = "Text used to identify stack/environment of infrastructure"
  default     = ""
}

variable "desc" {
  description = "The extra description of role"
  default     = ""
}
