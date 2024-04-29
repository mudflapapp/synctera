# Synctera::FulfillmentDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bulk_order_id** | **String** | The unique identifier of a bulk order in which the card was fulfilled | [optional][readonly] |
| **ship_date** | **Date** | The date that the card was shipped as reported by the card fulfillment provider | [optional][readonly] |
| **shipping_method** | **String** | The specific shipping method as reported by the card fulfillment provider | [optional][readonly] |
| **tracking_number** | **String** | The shipment tracking number | [optional][readonly] |

## Example

```ruby
require 'synctera'

instance = Synctera::FulfillmentDetails.new(
  bulk_order_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  ship_date: Mon Jul 18 20:00:00 EDT 2022,
  shipping_method: UPS Next Day Air Saver,
  tracking_number: 1ZW3268W1319325382
)
```

