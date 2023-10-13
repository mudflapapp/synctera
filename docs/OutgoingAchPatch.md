# Synctera::OutgoingAchPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **funds_availability_time** | **Time** |  | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::OutgoingAchPatch.new(
  funds_availability_time: 2010-05-06T12:23:34.321Z,
  status: null
)
```

