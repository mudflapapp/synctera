# Synctera::PhysicalCardResponseStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_status** | [**CardStatus**](CardStatus.md) |  |  |
| **memo** | **String** | Additional details about the reason for the status change | [optional] |
| **pending_reasons** | [**CardStatusPendingReasons**](CardStatusPendingReasons.md) |  | [optional] |
| **status_reason** | [**CardStatusReasonCode**](CardStatusReasonCode.md) |  |  |
| **card_fulfillment_status** | [**CardFulfillmentStatus**](CardFulfillmentStatus.md) |  |  |
| **fulfillment_details** | [**FulfillmentDetails**](FulfillmentDetails.md) |  | [optional] |
| **tracking_number** | **String** | This contains all shipping details as provided by the card fulfillment provider, including the tracking number. This field is deprecated. Instead, please use the fulfillment_details object, which includes a field for just the tracking number.  | [optional][readonly] |

## Example

```ruby
require 'synctera'

instance = Synctera::PhysicalCardResponseStatus.new(
  card_status: null,
  memo: null,
  pending_reasons: null,
  status_reason: null,
  card_fulfillment_status: null,
  fulfillment_details: null,
  tracking_number: Ship Date [2022-07-19], Shipping Method [UPS Next Day Air Saver]; Tracking Number [1ZW3268W1319325382]
)
```

