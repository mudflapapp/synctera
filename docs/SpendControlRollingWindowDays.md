# Synctera::SpendControlRollingWindowDays

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **days** | **Integer** | The number of days to define a rolling window for a spend control |  |
| **time_range_type** | [**SpendControlTimeRangeType**](SpendControlTimeRangeType.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::SpendControlRollingWindowDays.new(
  days: null,
  time_range_type: null
)
```

