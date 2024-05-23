# Synctera::FulfillmentDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_date** | **Date** | The date that the card was shipped as reported by the card fulfillment provider | [optional][readonly] |
| **shipping_method** | **String** | The specific shipping method as reported by the card fulfillment provider | [optional][readonly] |
| **tracking_number** | **String** | The shipment tracking number | [optional][readonly] |

## Example

```ruby
require 'synctera'

instance = Synctera::FulfillmentDetails.new(
  ship_date: Mon Jul 18 17:00:00 PDT 2022,
  shipping_method: UPS Next Day Air Saver,
  tracking_number: 1ZW3268W1319325382
)
```

