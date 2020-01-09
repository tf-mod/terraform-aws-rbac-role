
# iam role module
resource "aws_iam_role" "role" {
  name                 = local.name
  assume_role_policy   = data.aws_iam_policy_document.trustrel.json
  max_session_duration = var.session_duration
}

data "aws_iam_policy_document" "trustrel" {
  statement {
    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = var.allowed_accounts
    }

    actions = ["sts:AssumeRole"]
  }
}

# security/policy
resource "aws_iam_role_policy_attachment" "policy" {
  count      = length(var.policy_arn)
  policy_arn = element(var.policy_arn, count.index)
  role       = aws_iam_role.role.name
}
