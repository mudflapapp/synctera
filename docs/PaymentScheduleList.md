# Synctera::PaymentScheduleList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **payment_schedules** | [**Array&lt;PaymentSchedule&gt;**](PaymentSchedule.md) | Array of payment schedules. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::PaymentScheduleList.new(
  next_page_token: a8937a0d,
  payment_schedules: null
)
```

