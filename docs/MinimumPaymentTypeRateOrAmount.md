# Synctera::MinimumPaymentTypeRateOrAmount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **min_amount** | **Integer** | The minimum amount to charge as a minimum payment, in cents. For example, to set the minimum to $30, set this value to 3000. Note: despite setting this value, the minimum payment will never be greater than the statement balance.  |  |
| **rate** | **Integer** | The percentage of the balance to use, in basis points. For example, to set 12.5% of the balance, set this value to 1250.  |  |
| **type** | [**MinimumPaymentType**](MinimumPaymentType.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::MinimumPaymentTypeRateOrAmount.new(
  min_amount: null,
  rate: null,
  type: null
)
```

