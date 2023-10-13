# Synctera::EftCaBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Transfer amount in cents |  |
| **customer_id** | **String** | The UUID of the Synctera customer resource that is the originator of the transfer.  |  |
| **dc_sign** | **String** | Debit or credit sign |  |
| **source_data** | **Object** | Additional information to be added to the transfer | [optional] |
| **transaction_code** | **String** | The three digit transaction code that identifies the type of transaction. More information can be found here: https://www.payments.ca/sites/default/files/standard007eng.pdf.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::EftCaBase.new(
  amount: 10000,
  customer_id: 46fec39e-e776-4571-bf90-d0e1d15172fe,
  dc_sign: DEBIT,
  source_data: null,
  transaction_code: 304
)
```

