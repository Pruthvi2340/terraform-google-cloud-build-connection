variable "project_id" {
  type        = string
  description = "The project ID where resources will be deployed."
}

variable "name" {
  type        = string
  description = "Name of the resource, used for various resources like the artifact registry."
}

variable "location" {
  type        = string
  description = "The region/location for Cloud resources."
}


############ GITHUB CONNECTION SETUP VARIABLES ####################
variable "connection_name" {
  type        = string
  description = "Name of the Cloud Build connection to GitHub."
}

variable "secret_project_id" {
  type        = string
  description = "The project ID where the GitHub PAT secret will be stored."
}

variable "app_installation_id" {
  type        = number
  description = "GitHub App installation ID."
  sensitive   = true
}

variable "github_pat_secret_name" {
  type        = string
  description = "The name of the Secret Manager secret for the GitHub PAT."
}

variable "github_secret" {
  type        = string
  description = "The GitHub Personal Access Token."
}

############## HCP VAULT VARIABLES ##################

variable "use_vault" {
  type        = bool
  description = "This will retrive secret from HVP vault secret or else pass the github pat via .env file"
  default     = false
}

variable "hcp_project_id" {
  type        = string
  description = "To specify the project id of HCP"
  default     = ""
}
