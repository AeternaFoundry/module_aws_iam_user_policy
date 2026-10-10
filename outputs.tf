output "iam_user_policies_id" {
  description = "Map of id values across all iam_user_policies, keyed the same as var.iam_user_policies"
  value       = { for k, v in aws_iam_user_policy.iam_user_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_user_policies_name" {
  description = "Map of name values across all iam_user_policies, keyed the same as var.iam_user_policies"
  value       = { for k, v in aws_iam_user_policy.iam_user_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iam_user_policies_name_prefix" {
  description = "Map of name_prefix values across all iam_user_policies, keyed the same as var.iam_user_policies"
  value       = { for k, v in aws_iam_user_policy.iam_user_policies : k => v.name_prefix if v.name_prefix != null && length(v.name_prefix) > 0 }
}
output "iam_user_policies_policy" {
  description = "Map of policy values across all iam_user_policies, keyed the same as var.iam_user_policies"
  value       = { for k, v in aws_iam_user_policy.iam_user_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "iam_user_policies_user" {
  description = "Map of user values across all iam_user_policies, keyed the same as var.iam_user_policies"
  value       = { for k, v in aws_iam_user_policy.iam_user_policies : k => v.user if v.user != null && length(v.user) > 0 }
}

