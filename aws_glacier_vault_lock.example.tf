#Denies any delete for 365 days after archive added
data "aws_iam_policy_document" "example" {
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
