# Synctera::BatchPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The total amount of the batch transfer.  | [readonly] |
| **batch_payment_template_id** | **String** | The ID of the batch Payment template that was used to create the batch.  |  |
| **batched_transfer_ids** | **Array&lt;String&gt;** | The IDs of the transfers that are part of the batch. These values can be modified by the client before  the batch is in a terminal status.  |  |
| **creation_time** | **Time** |  | [readonly] |
| **id** | **String** |  | [readonly] |
| **last_updated_time** | **Time** |  | [readonly] |
| **payment_rail** | **String** | The payment rail that was used to process the batch.  | [optional] |
| **payment_rail_transfer_id** | **String** | The ID of the payment rail transfer that was used to process the batch.  | [optional] |
| **status** | [**BatchStatus**](BatchStatus.md) |  |  |
| **tenant** | **String** | The id of the tenant containing the resource.  | [optional] |
| **transaction_id** | **String** | The transaction ID of the batch which represents a transaction on the ledger.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::BatchPayment.new(
  amount: null,
  batch_payment_template_id: null,
  batched_transfer_ids: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  id: d290f1ee-6c54-4b01-90e6-d701748f0851,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  payment_rail: null,
  payment_rail_transfer_id: null,
  status: null,
  tenant: abcdef_ghijkl,
  transaction_id: null
)
```

