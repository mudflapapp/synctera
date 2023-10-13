# Synctera::NetworkFeeModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount of the fee in the smallest whole denomination of the applicable currency (eg. For USD use cents) |  |
| **credit_debit** | **String** | C &#x3D; credit; D &#x3D; debit | [optional] |
| **type** | **String** |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::NetworkFeeModel.new(
  amount: null,
  credit_debit: null,
  type: null
)
```

