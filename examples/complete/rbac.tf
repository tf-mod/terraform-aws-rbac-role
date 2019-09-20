# Complete example 

module "infra-engineer-role" {
  source  = "tf-mod/rbac-role/aws"
  version = "1.0.0"

  name             = var.name
  stack            = var.stack
  desc             = var.desc
  policy_arn       = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  allowed_accounts = var.allowed_accounts
}
