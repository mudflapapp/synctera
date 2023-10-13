# Synctera::Initialize3dsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Amount in cents of the External Card Transfer to be authenticated |  |
| **currency** | **String** | ISO 4217  Alpha-3 currency code |  |
| **external_card_id** | **String** | The ID of the External Card for which the 3DS Authentication will be performed |  |

## Example

```ruby
require 'synctera'

instance = Synctera::Initialize3dsRequest.new(
  amount: null,
  currency: USD,
  external_card_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7
)
```

