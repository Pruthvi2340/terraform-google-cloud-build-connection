# This Module only focused on creating 2 gen cloud github connection to cloud build
# Release 1.0.1
Added integration with HCP vault to retrieve and store secret in secret manager


Pre-Requisites
```
roles/cloudbuild.connectionAdmin needed for the server account or to user account

1. [Install the Cloud Build GitHub App](https://github.com/apps/google-cloud-build)on your GitHub account or in an organization you own.

2. [Create a personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token).

Make sure to set your token to have no expiration date and select the following permissions when prompted in GitHub: **repo** and **read:user**. If your app is installed in an organization, make sure to also select the read:org permission
```
```
module "cloud-build-connection" {
  source  = "Pruthvi2340/cloud-build-connection/google"
  version = "1.0.1"
  project_id             = "<project_id>"
  name                   = "<name>"
  app_installation_id    = var.app_installation_id
  github_secret          = var.github_secret
  connection_name        = "<connection_name>"
  location               = "us-central1"
  github_pat_secret_name = "<github_pat_secret_name>"
  secret_project_id      = "<secret_project_id>"
  use_vault              = false
}
```
# If you want to use vault to retrive secret set this as environment variable

# make use_vault = true
```
HCP_CLIENT_ID="..."
HCP_CLIENT_SECRET="..."
```
# Mark use_vault to true to retrieve github pat and stores in secret manager
```
use_vault = true
```

# Run the command 
```
#!/bin/bash

source .env
terraform plan -var="app_installation_id=$GITHUB_APP_INSTALLATION_ID" -var="github_secret=$GITHUB_PAT"
terraform apply -var="app_installation_id=$GITHUB_APP_INSTALLATION_ID" -var="github_secret=$GITHUB_PAT"
```# terraform-google-cloud-build-connection
