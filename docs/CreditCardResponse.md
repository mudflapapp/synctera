# Synctera::CreditCardResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_details** | [**CreditCardResponseDetails**](CreditCardResponseDetails.md) |  |  |
| **tenant** | **String** | The id of the tenant containing the resource.  |  |
| **type** | [**CardType**](CardType.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::CreditCardResponse.new(
  card_details: null,
  tenant: abcdef_ghijkl,
  type: null
)
```

