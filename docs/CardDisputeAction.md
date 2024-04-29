# Synctera::CardDisputeAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | [**CardAction**](CardAction.md) |  |  |
| **memo** | **String** | Memo text related to card dispute action * Required for PRE_ARBITRATION, ARBITRATION, PRE_COMPLIANCE, COMPLIANCE  | [optional] |
| **message** | **String** | Message text related to card dispute action * Max length for debit transactions is 38 characters  | [optional] |
| **payment_rail** | [**PaymentRail**](PaymentRail.md) |  |  |
| **reason_code** | [**CardDisputeReasonCodes**](CardDisputeReasonCodes.md) |  | [optional] |
| **state** | [**CardActionState**](CardActionState.md) |  |  |
| **supporting_doc_id** | **String** | The unique identifier of the supporting document | [optional] |
| **updated_reason_code_memo** | **String** | Memo text describing the reason for updating a reason code. * Required for PRE_ARBITRATION and ARBITRATION if a reason code is provided in the request. If no reason code is present in the request, the original CHARGEBACK reason code will be used.  | [optional] |
| **violation_code** | **String** | * Required for PRE_COMPLIANCE and COMPLIANCE  | [optional] |
| **violation_date** | **Time** | The timestamp representing when the violation occurred. * Required for PRE_COMPLIANCE and COMPLIANCE  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::CardDisputeAction.new(
  action: null,
  memo: null,
  message: null,
  payment_rail: null,
  reason_code: null,
  state: null,
  supporting_doc_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  updated_reason_code_memo: null,
  violation_code: null,
  violation_date: 2010-05-06T12:23:34.321Z
)
```

