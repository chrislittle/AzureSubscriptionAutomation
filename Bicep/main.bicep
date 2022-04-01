targetScope = 'tenant'
@description('Subscription name.')
param name string
@description('MCA Billing Account Name')
param billingAccountName string
@description('MCA Billing Profile Name')
param billingProfileName string
@description('MCA Invoice Section Name')
param invoiceSectionName string
@description('MCA Billing Scope')
param billingScope string = '/billingAccounts/${billingAccountName}/billingProfiles/${billingProfileName}/invoiceSections/${invoiceSectionName}'
@description('Subscription workload')
@allowed([
  'DevTest'
  'Production'
])
param workload string
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
