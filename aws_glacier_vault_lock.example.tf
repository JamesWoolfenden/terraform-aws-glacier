#Denies any delete for 365 days after archive added
data "aws_iam_policy_document" "example" {
  # checkov:skip=CKV_AWS_290: IAM policy requires broad write access for this module to function
  # checkov:skip=CKV_AWS_355: IAM policy requires wildcard resource for this module to function
  statement {
    actions   = ["glacier:DeleteArchive"]
    effect    = "Deny"
    resources = [aws_glacier_vault.example.arn]

    condition {
      test     = "NumericLessThanEquals"
      variable = "glacier:ArchiveAgeinDays"
      values   = ["365"]
    }
  }
}
resource "aws_glacier_vault_lock" "example" {
  complete_lock         = var.complete_lock
  policy                = data.aws_iam_policy_document.example.json
  vault_name            = aws_glacier_vault.example.name
  ignore_deletion_error = var.ignore_deletion_error
}
