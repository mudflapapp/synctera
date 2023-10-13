# Synctera::UpdateGatewayRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | Current status of the Authorization gateway | [optional] |
| **card_products** | **Array&lt;String&gt;** | List of Card Product unique identifiers that will utilize the Gateway | [optional] |
| **custom_headers** | **Hash&lt;String, String&gt;** | Custom Headers of the Authorization gateway | [optional] |
| **standin** | [**GatewayStandin**](GatewayStandin.md) |  | [optional] |
| **url** | **String** | URL of the Authorization gateway | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::UpdateGatewayRequest.new(
  active: null,
  card_products: null,
  custom_headers: null,
  standin: null,
  url: null
)
```

