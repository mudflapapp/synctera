# Synctera::ExchangeDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fees** | [**Array&lt;ExchangeFeeDetails&gt;**](ExchangeFeeDetails.md) | The fees associated with the exchange.  | [optional] |
| **rate** | **String** | The exchange rate from source to target currency. For example: 1.30445  |  |
| **source_amount** | **Integer** | The amount in the source currency&#39;s minor unit. For example, 10000 would be $100 for USD. This is the amount inclusive of fees.  |  |
| **source_currency** | **String** | The ISO 4217 currency code |  |
| **target_amount** | **Integer** | The amount in the target currency&#39;s minor unit. For example, 13045 would be £130.45 for GBP. This is the amount inclusive of fees.  |  |
| **target_currency** | **String** | The ISO 4217 currency code |  |

## Example

```ruby
require 'synctera'

instance = Synctera::ExchangeDetails.new(
  fees: null,
  rate: 1.30445,
  source_amount: 10000,
  source_currency: USD,
  target_amount: 10000,
  target_currency: GBP
)
```

