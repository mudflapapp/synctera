# Synctera::CardTransactionDataCurrencyConversion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversion_rate** | **Float** | The currency conversion rate used | [optional] |
| **original_amount** | **Integer** | The original transaction amount before conversion | [optional] |
| **original_currency_code** | **String** | The original currency code | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::CardTransactionDataCurrencyConversion.new(
  conversion_rate: null,
  original_amount: null,
  original_currency_code: null
)
```

