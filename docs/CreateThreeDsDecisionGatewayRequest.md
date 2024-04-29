# Synctera::CreateThreeDsDecisionGatewayRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_products** | **Array&lt;String&gt;** | List of Card Product IDs that will use the 3DS decision gateway |  |
| **custom_headers** | **Hash&lt;String, String&gt;** | These key-value pairs define custom HTTP headers that will be included in every HTTP request to the gateway. Note that when updating this field, all key-value pairs will be replaced. They are not merged with existing data.  | [optional] |
| **decision_url** | **String** | URL of the 3DS decision gateway |  |
| **fallback_decision** | [**ThreeDsDecision**](ThreeDsDecision.md) |  |  |
| **is_active** | **Boolean** | The 3DS decision gateway will only be used if this is true. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::CreateThreeDsDecisionGatewayRequest.new(
  card_products: null,
  custom_headers: null,
  decision_url: null,
  fallback_decision: null,
  is_active: null
)
```
