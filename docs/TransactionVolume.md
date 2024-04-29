# Synctera::TransactionVolume

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount of the transactions in ISO 4217 minor currency units. For example, a transaction of $100 USD will be displayed as 10000. | [optional] |
| **channel** | **String** | The channel of the transaction volume. | [optional] |
| **channel_coverage** | **String** | The channel coverage of the transaction volume. | [optional] |
| **currency** | **String** | The currency in ISO 4217 format. | [optional] |
| **frequency** | [**Frequency**](Frequency.md) |  | [optional] |
| **on_synctera** | **Boolean** | Whether the transaction volume is on Synctera. | [optional] |
| **payment_channel** | **String** | The payment channel of the transaction | [optional] |
| **transaction_count** | **Integer** | The number of transactions. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::TransactionVolume.new(
  amount: 1000,
  channel: null,
  channel_coverage: null,
  currency: USD,
  frequency: null,
  on_synctera: true,
  payment_channel: null,
  transaction_count: 1000
)
```

