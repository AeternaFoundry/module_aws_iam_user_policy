variable "iam_user_policies" {
  description = <<EOT
Map of iam_user_policies, attributes below
Required:
    - policy
    - user
Optional:
    - name
    - name_prefix
EOT

  type = map(object({
    policy      = string
    user        = string
    name        = optional(string)
    name_prefix = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

