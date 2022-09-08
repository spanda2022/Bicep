param azlocation string
param storageName string
resource storage 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageName
  location: azlocation
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'Storage'
  properties:{}
}
