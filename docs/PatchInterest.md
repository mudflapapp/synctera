# Synctera::PatchInterest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accrual_payout_schedule** | [**AccrualPayoutSchedule**](AccrualPayoutSchedule.md) |  | [optional] |
| **calculation_method** | [**CalculationMethod**](CalculationMethod.md) |  | [optional] |
| **description** | **String** | User provided description for the current interest. | [optional] |
| **id** | **String** | Interest ID | [optional][readonly] |
| **product_type** | **String** |  |  |
| **rates** | [**Array&lt;RateDetails&gt;**](RateDetails.md) | A list of interest rate. Date intervals between valid_from and valid_to expect to have no overlap.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::PatchInterest.new(
  accrual_payout_schedule: null,
  calculation_method: null,
  description: The rate is designed for high interest saving account.,
  id: null,
  product_type: null,
  rates: null
)
```

