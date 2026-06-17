variable "AZURE_SUBSCRIPTION_ID" {
  type        = string
}
variable "appregistration-name" {
  type = string
}
variable "appregistration_web_redirect_uris" {
  type = string
  default = "https://example.com/callback"
}