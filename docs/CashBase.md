# Synctera::CashBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Transfer amount in cents |  |
| **dc_sign** | **String** | Debit or credit sign |  |
| **source_data** | **Object** | Additional information to be added to the transfer | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::CashBase.new(
  amount: 10000,
  dc_sign: DEBIT,
  source_data: null
)
```

