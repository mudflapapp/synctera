# Synctera::CardTransactionData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_id** | **String** | Debit Network ID | [optional][readonly] |
| **currency_code** | **String** |  | [optional] |
| **currency_conversion** | [**CardTransactionDataCurrencyConversion**](CardTransactionDataCurrencyConversion.md) |  | [optional] |
| **merchant** | [**CardTransactionDataMerchant**](CardTransactionDataMerchant.md) |  | [optional] |
| **network** | **String** | The network used for the transaction | [optional] |
| **network_reference_id** | **String** | The ID provided by he network to represent this transaction | [optional] |
| **pos** | [**CardTransactionDataPos**](CardTransactionDataPos.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::CardTransactionData.new(
  card_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  currency_code: null,
  currency_conversion: null,
  merchant: null,
  network: null,
  network_reference_id: null,
  pos: null
)
```

