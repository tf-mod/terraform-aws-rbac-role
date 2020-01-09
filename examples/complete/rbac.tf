# Complete example 

module "infra-engineer-role" {
  source  = "tf-mod/rbac-role/aws"
  version = "1.0.0"

  name             = var.name
  stack            = var.stack
  desc             = var.desc
  policy_arn       = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  session_duration = var.session_duration
  allowed_accounts = var.allowed_accounts
}
