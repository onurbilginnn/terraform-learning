provider "vault" {
  address = "http://127.0.0.1:8200"
}

data "vault_generic_secret" "test" {
  path = "secret/db_creds"
}

output "vault_secrets" {
  value = data.vault_generic_secret.test.data_json
  sensitive = true
}