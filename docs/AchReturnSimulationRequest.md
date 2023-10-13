# Synctera::AchReturnSimulationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ach_id** | **String** | ID of an outgoing ACH transfer to be returned. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::AchReturnSimulationRequest.new(
  ach_id: 23a37f14-16eb-461d-9331-b78182adbad4
)
```

