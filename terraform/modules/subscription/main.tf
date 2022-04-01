//Get billing account object
data "azurerm_billing_mca_account_scope" "example" {
  billing_account_name = var.billing_account_id
  billing_profile_name = var.billing_profile_id
  invoice_section_name = var.invoice_section_id
}

//Create Azure subscription
resource "azurerm_subscription" "subscription" {
  subscription_name = var.name
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.billing_enrollment_account_scope.id
  workload = var.workload
}