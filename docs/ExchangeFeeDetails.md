# Synctera::ExchangeFeeDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount in the source currency&#39;s minor unit. For example, 10000 would be $100 for USD.  One of the amount or percentage is required.  | [optional] |
| **currency** | **String** | The ISO 4217 currency code of the fee. The currency must match either the source or target currency of the exchange details. If the fee is a percentage of the source amount, the currency must match the source currency. If the fee is a percentage of the target amount, the currency must match the target currency.  |  |
| **description** | **String** | The description of the fee. | [optional] |
| **fee_type** | [**ExchangeFeeDetailsFeeType**](ExchangeFeeDetailsFeeType.md) |  |  |
| **percentage** | **String** | The percentage of the amount that is the fee. For example, \&quot;0.05403\&quot; would be 5.403%.  One of the amount or percentage is required.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::ExchangeFeeDetails.new(
  amount: null,
  currency: null,
  description: null,
  fee_type: null,
  percentage: null
)
```

