# Synctera::ThreeDsDecisionGatewayResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_products** | **Array&lt;String&gt;** | List of Card Product IDs that will use the 3DS decision gateway |  |
| **creation_time** | **Time** | The timestamp when the 3DS decision gateway was created | [readonly] |
| **custom_headers** | **Hash&lt;String, String&gt;** | These key-value pairs define custom HTTP headers that will be included in every HTTP request to the gateway. Note that when updating this field, all key-value pairs will be replaced. They are not merged with existing data.  | [optional] |
| **decision_url** | **String** | URL of the 3DS decision gateway |  |
| **fallback_decision** | [**ThreeDsDecision**](ThreeDsDecision.md) |  |  |
| **id** | **String** | The unique identifier of an 3DS decision gateway |  |
| **is_active** | **Boolean** | The 3DS decision gateway will only be used if this is true. |  |
| **last_updated_time** | **Time** | The timestamp when the 3DS decision gateway was last modified | [readonly] |
| **tenant** | **String** | The id of the tenant containing the resource.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::ThreeDsDecisionGatewayResponse.new(
  card_products: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  custom_headers: null,
  decision_url: null,
  fallback_decision: null,
  id: null,
  is_active: null,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  tenant: abcdef_ghijkl
)
```

