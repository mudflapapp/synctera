# Synctera::SpendingLimits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **day** | [**SpendingLimitWithTime**](SpendingLimitWithTime.md) |  | [optional] |
| **description** | **String** | User provided description on the spending limits | [optional] |
| **lifetime** | [**SpendingLimitWithTime**](SpendingLimitWithTime.md) |  | [optional] |
| **month** | [**SpendingLimitWithTime**](SpendingLimitWithTime.md) |  | [optional] |
| **transaction** | [**SpendingLimitsTransaction**](SpendingLimitsTransaction.md) |  | [optional] |
| **week** | [**SpendingLimitWithTime**](SpendingLimitWithTime.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::SpendingLimits.new(
  day: null,
  description: null,
  lifetime: null,
  month: null,
  transaction: null,
  week: null
)
```

