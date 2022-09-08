targetScope= 'subscription'
param azlocation string ='southafricanorth'
param resourceGroupName string='rgDemo1_bicep'
param storageName string='teststoragebicep2021'

resource rgDemo1_bicep 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: azlocation
}

module storageAcct 'storage.bicep' = {
  name: 'storageModule'
  scope: rgDemo1_bicep
  params: {
    azlocation: azlocation
    storageName: storageName
  }
}
