resource "aws_sns_topic" "example" {
  name_prefix       = var.sns_topic_name
  kms_master_key_id = "alias/aws/sns"
  tags = {
    key = ""
  }
}
