# Synctera::RateDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accrual_period** | **String** | How often interest gets calculated against the balance. Note: although two options are displayed here, only DAILY is supported at the moment.  |  |
| **rate** | **Integer** | Rate in basis points. E.g. 5 represents 0.05% |  |
| **valid_from** | **Date** | Rate effective start date. Inclusive. |  |
| **valid_to** | **Date** | Rate effective end date. Exclusive. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::RateDetails.new(
  accrual_period: null,
  rate: null,
  valid_from: null,
  valid_to: null
)
```

