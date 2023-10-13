# Synctera::BillingPeriod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **frequency** | **String** | The frequency of billing cycles. Along with the start date, this will determine the start and end of each cycle.  |  |
| **start_date** | **Time** | The first day of the first billing cycle for this account. For a monthly billing cycle, this would determine the day of the month each billing cycle will start on. Note that, although this is returned as a UTC timestamp, the date always corresponds to the bank&#39;s calendar, and therefore the time and timezone should be ignored.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::BillingPeriod.new(
  frequency: null,
  start_date: 2022-01-01T00:00Z
)
```

