output "topic" {
  value = aws_sns_topic.example
}

output "vault" {
  value = aws_glacier_vault.example
}

output "lock" {
  value = aws_glacier_vault_lock.example
}
