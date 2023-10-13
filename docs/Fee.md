# Synctera::Fee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Fee amount |  |
| **currency** | **String** | Fee currency code in ISO 4217 |  |
| **fee_type** | **String** | Fee type |  |
| **id** | **String** | Fee ID | [optional][readonly] |
| **product_type** | **String** |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::Fee.new(
  amount: null,
  currency: null,
  fee_type: null,
  id: null,
  product_type: null
)
```

