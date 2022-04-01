//Get billing account object
data "azurerm_billing_enrollment_account_scope" "billing_enrollment_account_scope" {
  billing_account_name    = var.billing_account_name
  enrollment_account_name = var.enrollment_account_name
}

//Create Azure subscription
resource "azurerm_subscription" "subscription" {
  subscription_name = var.name
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.billing_enrollment_account_scope.id
  workload = var.workload
}