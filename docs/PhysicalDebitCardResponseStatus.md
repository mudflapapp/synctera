# Synctera::PhysicalDebitCardResponseStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_status** | [**CardStatus**](CardStatus.md) |  |  |
| **memo** | **String** | Additional details about the reason for the status change | [optional] |
| **pending_reasons** | [**CardStatusPendingReasons**](CardStatusPendingReasons.md) |  | [optional] |
| **status_reason** | [**CardStatusReasonCode**](CardStatusReasonCode.md) |  |  |
| **card_fulfillment_status** | [**CardFulfillmentStatus**](CardFulfillmentStatus.md) |  |  |
| **fulfillment_details** | [**FulfillmentDetails**](FulfillmentDetails.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::PhysicalDebitCardResponseStatus.new(
  card_status: null,
  memo: null,
  pending_reasons: null,
  status_reason: null,
  card_fulfillment_status: null,
  fulfillment_details: null
)
```

