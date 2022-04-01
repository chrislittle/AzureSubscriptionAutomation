variable "name" {
  type        = string
  description = "Subscription name."
}

variable "billing_account_id" {
  type        = string
  description = "MCA Billing Account ID."
}

variable "billing_profile_id" {
  type        = string
  description = "MCA Billing Profile ID."
}

variable "invoice_section_id" {
  type        = string
  description = "MCA Invoice Section ID."
}

variable "workload" {
  type        = string
  description = "Subscription workload."
  validation {
    condition = anytrue([
      var.workload == "DevTest",
      var.workload == "Production"
    ])
    error_message = "Please enter a valid workload type (DevTest or Production)."
  }
}