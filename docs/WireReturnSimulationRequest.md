# Synctera::WireReturnSimulationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wire_id** | **String** | ID of an outgoing Wire transfer to be returned. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::WireReturnSimulationRequest.new(
  wire_id: 23a37f14-16eb-461d-9331-b78182adbad4
)
```

