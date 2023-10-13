# Synctera::VirtualCardResponseStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_status** | [**CardStatus**](CardStatus.md) |  |  |
| **memo** | **String** | Additional details about the reason for the status change | [optional] |
| **pending_reasons** | [**CardStatusPendingReasons**](CardStatusPendingReasons.md) |  | [optional] |
| **status_reason** | [**CardStatusReasonCode**](CardStatusReasonCode.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::VirtualCardResponseStatus.new(
  card_status: null,
  memo: null,
  pending_reasons: null,
  status_reason: null
)
```

