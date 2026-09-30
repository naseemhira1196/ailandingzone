targetScope = 'subscription'

@minLength(1)
@maxLength(64)
param environmentName string

@minLength(1)
param location string

param sessionId string

param deployedBy string

param createdAt string

var tags = {
  'app-onboard-skill': 'true'
  'app-onboard-session-id': sessionId
  'created-at': createdAt
  environment: environmentName
  'deployed-by': deployedBy
}

resource rg 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: 'rg-${environmentName}'
  location: location
  tags: tags
}

module swa './modules/static-web-app.bicep' = {
  name: 'swa-deployment'
  scope: rg
  params: {
    location: location
    tags: tags
    swaName: 'swa-${environmentName}'
  }
}

output staticWebAppId string = swa.outputs.swaId
output staticWebAppUrl string = swa.outputs.swaUrl
