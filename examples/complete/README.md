# Full example of IAM role for RBAC (Role-Based Access Control)

## Usage
### Create an IAM role to target aws account

You can use this module like as below example. You can allow multiple accounts to assume the role adding them into `aws` in 'principals'. 

#### The latest example

```
module "infra-engineer-role" {
  source  = "tf-mod/rbac-role/aws"
  version = "1.0.0"

  name             = var.name
  stack            = var.stack
  desc             = var.desc
  policy_arn       = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  prinsipals       = {
    "aws" = ["111122223333", "222233334444"]
  }
}
```

#### Deprecated example (under 1.0.2)


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
