data "hcp_vault_secrets_secret" "git_pat" {
  count       = var.use_vault ? 1 : 0
  app_name    = "pruthvi99003871"
  secret_name = "github_cloud_build_pat"
}

# output "hashicorp_secret" {
#     count = var.use_vault ? 1:0
#   value     = data.hcp_vault_secrets_secret.example.secret_value
#   sensitive = true
# }