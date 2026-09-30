param location string
param tags object
param swaName string

resource staticWebApp 'Microsoft.Web/staticSites@2025-05-01' = {
  name: swaName
  location: location
  tags: tags
  sku: {
    name: 'Free'
    tier: 'Free'
  }
  properties: {}
}

output swaId string = staticWebApp.id
output swaUrl string = 'https://${staticWebApp.properties.defaultHostname}'
