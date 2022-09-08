targetScope= 'subscription'
param azlocation string ='SouthAfricaNorth'
param resourceGroupName string='rgDemo_bicep'


resource rgDemo_bicep 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: azlocation
}

