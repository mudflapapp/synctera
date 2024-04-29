# Synctera::AvailableCardAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | [**CardAction**](CardAction.md) |  |  |
| **state** | [**CardActionState**](CardActionState.md) |  |  |
| **timestamp_valid_to** | **Time** | The time by which the action must be taken against the dispute. * Only applicable for time constrained actions.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::AvailableCardAction.new(
  action: null,
  state: null,
  timestamp_valid_to: 2010-05-06T12:23:34.321Z
)
```

