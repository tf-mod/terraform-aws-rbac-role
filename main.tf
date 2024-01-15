
# iam role module
resource "aws_iam_role" "role" {
  name                 = local.name
  assume_role_policy   = data.aws_iam_policy_document.trustrel.json
  max_session_duration = var.session_duration
}

data "aws_iam_policy_document" "trustrel" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]
    dynamic "principals" {
      for_each = { for k, v in var.principals : k => v if contains(["aws", "service"], k) }
      content {
        type        = lower(principals.key) == "aws" ? upper(principals.key) : title(principals.key)
        identifiers = principals.value
      }
    }
  }

  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRoleWithWebIdentity"]
    dynamic "principals" {
      for_each = { for k, v in var.principals : k => v if contains(["federated"], k) }
      content {
        type        = lower(principals.key) == "federated" ? "Federated" : title(principals.key)
        identifiers = principals.value
      }
    }
  }
}

# security/policy
resource "aws_iam_role_policy_attachment" "policy" {
  count      = length(var.policy_arn)
  policy_arn = element(var.policy_arn, count.index)
  role       = aws_iam_role.role.name
}
