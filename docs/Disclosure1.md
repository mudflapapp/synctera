# Synctera::Disclosure1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creation_time** | **Time** |  | [optional][readonly] |
| **event_type** | **String** |  |  |
| **id** | **String** | Disclosure ID | [optional] |
| **last_updated_time** | **Time** |  | [optional][readonly] |
| **timestamp** | **Time** | Date of disclosure |  |
| **type** | **String** | Disclosure Type |  |
| **version** | **String** | Disclosure Version |  |

## Example

```ruby
require 'synctera'

instance = Synctera::Disclosure1.new(
  creation_time: 2010-05-06T12:23:34.321Z,
  event_type: VIEWED,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  timestamp: 2010-05-06T12:23:34.321Z,
  type: REG_DD,
  version: v1.1
)
```

