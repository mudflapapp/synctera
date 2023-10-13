# Synctera::CardChange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_type** | [**ChangeType**](ChangeType.md) |  |  |
| **channel** | [**ChangeChannel**](ChangeChannel.md) |  |  |
| **id** | **String** | Unique token | [readonly] |
| **memo** | **String** | Additional details about the reason for the status change | [optional] |
| **reason** | [**CardStatusReasonCode**](CardStatusReasonCode.md) |  | [optional] |
| **state** | [**CardChangeState**](CardChangeState.md) |  |  |
| **updated_at** | **Time** | Date of change | [readonly] |
| **updated_by** | **String** | ID of user who initiated the change, if done via Synctera Admin System |  |

## Example

```ruby
require 'synctera'

instance = Synctera::CardChange.new(
  change_type: null,
  channel: null,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  memo: null,
  reason: null,
  state: null,
  updated_at: 2010-05-06T12:23:34.321Z,
  updated_by: null
)
```

