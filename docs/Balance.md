# Synctera::Balance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **balance** | **Integer** | balance in ISO 4217 minor currency units. Unit in cents. | [readonly] |
| **type** | [**BalanceType**](BalanceType.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::Balance.new(
  balance: 2399,
  type: null
)
```

