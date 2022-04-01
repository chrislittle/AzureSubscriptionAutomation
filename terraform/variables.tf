variable "name" {
  type        = string
  description = "Subscription name."
}

variable "billing_account_name" {
  type        = string
  description = "MCA Billing Account Name."
}

variable "enrollment_account_name" {
  type        = string
  description = "MCA Enrollment Account Name."
}

variable "workload" {
  type        = string
  description = "Subscription workload."
  validation {
    condition = anytrue([
      var.workload == "DevTest",
      var.workload == "Production"
    ])
    error_message = "Please enter a valid Azure Region."
  }
}