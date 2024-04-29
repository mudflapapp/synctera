# Synctera::AchDisputeActionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | [**AchAction**](AchAction.md) |  |  |
| **creation_time** | **Time** | The date and time the resource was created. | [readonly] |
| **id** | **String** | The unique identifier of the dispute action | [readonly] |
| **message** | **String** | Message text related to card dispute action | [optional] |
| **originator_name** | **String** | The originator name to block when an incoing ACH transaction is recieved on the account associated with hte dispute | [optional] |
| **payment_rail** | [**PaymentRail**](PaymentRail.md) |  |  |
| **reason_code** | [**AchDisputeReasonCodes**](AchDisputeReasonCodes.md) |  | [optional] |
| **return_code** | [**AchDisputeReturnCodes**](AchDisputeReturnCodes.md) |  | [optional] |
| **status** | [**AchDisputeActionStatus**](AchDisputeActionStatus.md) |  |  |
| **supporting_doc_id** | **String** | The unique identifier of the supporting document | [optional] |
| **tenant** | **String** | The id of the tenant containing the resource.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::AchDisputeActionResponse.new(
  action: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  message: null,
  originator_name: null,
  payment_rail: null,
  reason_code: null,
  return_code: null,
  status: null,
  supporting_doc_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  tenant: abcdef_ghijkl
)
```

