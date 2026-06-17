resource "azuread_application" "app-Registration" {
  display_name = var.appregistration-name
  
  # Optional: Add redirect URIs for OAuth2 or OpenID Connect
  web {
    redirect_uris = [var.appregistration_web_redirect_uris]
  }
}

resource "azuread_service_principal" "sp-appregistration" {
  application_id = azuread_application.app-Registration.application_id
}

# Optionally, create a client secret for the App Registration
resource "azuread_application_password" "client-secret-appregistration" {
  application_id = azuread_application.app-Registration.application_id
  display_name   = "MyAppSecret"
  end_date_relative = "8760h" 
}
