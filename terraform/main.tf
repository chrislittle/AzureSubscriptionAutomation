//Create Subscription
module "name" {
    source = "./modules/subscription"
    
    name                    = var.name
    billing_account_name    = var.billing_account_name
    enrollment_account_name = var.enrollment_account_name
    workload                = var.workload
}