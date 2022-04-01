//Create Subscription
module "name" {
    source = "./modules/subscription"
    
    name               = var.name
    billing_account_id = var.billing_account_id
    billing_profile_id = var.billing_profile_id
    invoice_section_id = var.invoice_section_id
}