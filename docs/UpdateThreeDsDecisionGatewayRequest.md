# Synctera::UpdateThreeDsDecisionGatewayRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_products** | **Array&lt;String&gt;** | List of card product unique IDs that will use the 3DS decision gateway. Note that the list of card product IDs from this request does not merge with the 3DS gateway&#39;s previous list of card product IDs. The list of card product IDs for the gateway will be fully replaced by the list from the update request, if any such list is included in the request.  | [optional] |
| **custom_headers** | **Hash&lt;String, String&gt;** | These key-value pairs define custom HTTP headers that will be included in every HTTP request to the gateway. Note that when updating this field, all key-value pairs will be replaced. They are not merged with existing data.  | [optional] |
| **decision_url** | **String** | URL of the 3DS decision gateway | [optional] |
| **fallback_decision** | [**ThreeDsDecision**](ThreeDsDecision.md) |  | [optional] |
| **is_active** | **Boolean** | The 3DS decision gateway will only be used if this is true. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::UpdateThreeDsDecisionGatewayRequest.new(
  card_products: null,
  custom_headers: null,
  decision_url: null,
  fallback_decision: null,
  is_active: null
)
```

