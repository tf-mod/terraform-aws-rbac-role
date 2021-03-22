# Full example of IAM role for RBAC (Role-Based Access Control)

## Usage
### Create an IAM role to target aws account

You can use this module like as below example. You can allow multiple accounts to assume the role adding them into `allowed_accounts` list. 
#### latest example

```
module "infra-engineer-role" {
  source  = "tf-mod/rbac-role/aws"
  version = "1.0.0"

  name             = var.name
  stack            = var.stack
  desc             = var.desc
  policy_arn       = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  prinsipals       = {
    "aws" = var.allowed_accounts
  }
}
```

#### Deprecated example


```
module "infra-engineer-role" {
  source  = "tf-mod/rbac-role/aws"
  version = "1.0.0"

  name             = var.name
  stack            = var.stack
  desc             = var.desc
  policy_arn       = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  allowed_accounts = var.allowed_accounts
}
```
