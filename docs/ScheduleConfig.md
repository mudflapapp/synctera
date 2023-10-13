# Synctera::ScheduleConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | Number of times to recur. Exactly one of end_date or count must be provided | [optional] |
| **end_date** | **Date** | End date of the schedule (exclusive). Exactly one of end_date or count must be provided | [optional] |
| **frequency** | **String** |  |  |
| **interval** | **Integer** | Interval between recurrences, e.g. interval &#x3D; 2 with frequency &#x3D; WEEKLY means every other week. |  |
| **start_date** | **Date** | Start date of the schedule (inclusive) |  |

## Example

```ruby
require 'synctera'

instance = Synctera::ScheduleConfig.new(
  count: null,
  end_date: null,
  frequency: null,
  interval: null,
  start_date: null
)
```

