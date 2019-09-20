
variable "aws_account_id" {
  description = "The aws account id for the tf backend creation (e.g. 857026751867)"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "aws_profile" {
  default = "default"
}

# trusted accounts
variable "allowed_accounts" {
  description = "The list of aws account ids to allow them to assume roles in this account(e.g. 857026751867)"
  default     = ["336686831133"] // This is the account number of ID account
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
