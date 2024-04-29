# Synctera::UpdateGatewayRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_products** | **Array&lt;String&gt;** | List of Card Product unique identifiers that will utilize the Gateway | [optional] |
| **custom_headers** | **Hash&lt;String, String&gt;** | These key-value pairs define custom HTTP headers that will be included in every HTTP request to the gateway. Note that when updating this field, all key-value pairs will be replaced. They are not merged with existing data.  | [optional] |
| **is_active** | **Boolean** | Current status of the Authorization gateway | [optional] |
| **standin** | [**GatewayStandin**](GatewayStandin.md) |  | [optional] |
| **url** | **String** | URL of the Authorization gateway | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::UpdateGatewayRequest.new(
  card_products: null,
  custom_headers: null,
  is_active: null,
  standin: null,
  url: null
)
```

