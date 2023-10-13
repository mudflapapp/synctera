# Synctera::CardStatusPendingReasons

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_waiting_for_bulk_shipment** | **Boolean** | The card is to be shipping as part of a bulk shipment but that bulk shipment has not yet been released.  | [optional] |
| **is_waiting_for_image** | **Boolean** | The card has a custom image and either that image hasn&#39;t yet been uploaded and approved or the card has not yet been processed by the periodic daily custom card image processing task.  | [optional] |
| **is_waiting_for_pin** | **Boolean** | The card requires a PIN to be set before it can be issued (refer to the pin_issuance_policy of the related card product). The PIN has not yet been set and not enough time has passed to use a random PIN (if applicable).  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::CardStatusPendingReasons.new(
  is_waiting_for_bulk_shipment: null,
  is_waiting_for_image: null,
  is_waiting_for_pin: null
)
```

