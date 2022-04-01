targetScope = 'tenant'

@description('Subscription name')
param name string

@description('MCA Billing Account ID')
param billingAccountID string

@description('MCA Billing Profile ID')
param billingProfileID string

@description('MCA Invoice Section ID')
param invoiceSectionID string

@description('Subscription workload')
@allowed([
  'DevTest'
  'Production'
])
param workload string

var billingScope = '/providers/Microsoft.Billing/billingAccounts/${billingAccountID}/billingProfiles/${billingProfileID}/invoiceSections/${invoiceSectionID}'

resource subscriptionAlias 'Microsoft.Subscription/aliases@2020-09-01' = {
  scope: tenant()
  name: name
  properties: {
    workload: workload
    displayName: name
    billingScope: billingScope
  }  
}
output subscriptionId string = subscriptionAlias.properties.subscriptionId
