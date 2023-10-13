# Synctera::TransferReversalRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Amount of the refund in cents (Amount can be up to the original amount) |  |
| **currency** | **String** | ISO 4217  Alpha-3 currency code |  |

## Example

```ruby
require 'synctera'

instance = Synctera::TransferReversalRequest.new(
  amount: null,
  currency: USD
)
```

