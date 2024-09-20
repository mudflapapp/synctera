# Synctera::StopPaymentResponseWAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dispute_id** | **String** | ID of the dispute that created the stop payment | [optional] |
| **expires_on** | **Time** | The date when this stop payment is no longer valid. This is only for business accounts. | [optional] |
| **originator_name** | **String** | Name of the originator |  |
| **stop_payment_id** | **String** |  |  |
| **transaction_id** | **String** | If this stop payment was created from a disputed transaction, transaction_id references the posted transaction. | [optional] |
| **account_id** | **String** |  | [optional] |
| **creation_time** | **Time** | Timestamp when the stop payment was created. | [optional][readonly] |
| **last_updated_time** | **Time** | Timestamp when stop payment was updated. | [optional][readonly] |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::StopPaymentResponseWAccount.new(
  dispute_id: null,
  expires_on: null,
  originator_name: null,
  stop_payment_id: null,
  transaction_id: null,
  account_id: null,
  creation_time: null,
  last_updated_time: null,
  tenant: abcdef_ghijkl
)
```

