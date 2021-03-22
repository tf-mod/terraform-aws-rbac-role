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
