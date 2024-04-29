# Synctera::CardDisputeActionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | [**CardAction**](CardAction.md) |  |  |
| **creation_time** | **Time** | The timestamp representing when the object was created | [readonly] |
| **id** | **String** | The unique identifier of the dispute action | [readonly] |
| **message** | **String** | Message text related to card dispute action | [optional] |
| **payment_rail** | [**PaymentRail**](PaymentRail.md) |  |  |
| **status** | [**CardDisputeActionStatus**](CardDisputeActionStatus.md) |  |  |
| **supporting_doc_id** | **String** | The unique identifier of the supporting document | [optional][readonly] |
| **tenant** | **String** | The id of the tenant containing the resource.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::CardDisputeActionResponse.new(
  action: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  message: null,
  payment_rail: null,
  status: null,
  supporting_doc_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  tenant: abcdef_ghijkl
)
```

