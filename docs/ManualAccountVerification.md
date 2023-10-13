# Synctera::ManualAccountVerification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creation_time** | **Time** | The time at which verification was first completed. | [optional] |
| **last_updated_time** | **Time** | The time at which verification was last updated. | [optional] |
| **status** | **String** | The status of verification |  |
| **vendor** | **String** | The vendor used for verifying the account |  |

## Example

```ruby
require 'synctera'

instance = Synctera::ManualAccountVerification.new(
  creation_time: 2010-05-06T12:23:34.321Z,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  status: null,
  vendor: null
)
```

