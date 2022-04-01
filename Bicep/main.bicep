targetScope = 'tenant'
@description('Subscription name.')
param name string
@description('Full resource ID of billing scope.')
param billingScope string
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
