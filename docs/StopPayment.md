# Synctera::StopPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dispute_id** | **String** | ID of the dispute that created the stop payment | [optional] |
| **originator_name** | **String** | Name of the originator |  |
| **stop_payment_id** | **String** |  |  |
| **transaction_id** | **String** | If this stop payment was created from a disputed transaction, transaction_id references the posted transaction. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::StopPayment.new(
  dispute_id: null,
  originator_name: null,
  stop_payment_id: null,
  transaction_id: null
)
```

