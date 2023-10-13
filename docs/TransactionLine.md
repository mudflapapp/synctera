# Synctera::TransactionLine

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The account uuid associated with this transaction line |  |
| **account_no** | **String** | The account number associated with this transaction line |  |
| **amount** | **Integer** | The amount (in cents) of the transaction |  |
| **currency** | **String** | ISO 4217 alphabetic currency code of the transfer amount |  |
| **dc_sign** | [**DcSign**](DcSign.md) |  |  |
| **uuid** | **String** |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::TransactionLine.new(
  account_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  account_no: null,
  amount: null,
  currency: null,
  dc_sign: null,
  uuid: null
)
```

