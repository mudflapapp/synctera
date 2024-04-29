# Synctera::AchDisputeAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | [**AchAction**](AchAction.md) |  |  |
| **message** | **String** | Message text related to ACH dispute action * Max length for debit transactions is 38 characters  | [optional] |
| **originator_name** | **String** | This field is required for the STOP_PAYMENT dispute action type. When the associated dispute is accepted any incoming ACH transactions where the sender name matches originator_name will be ignored.  | [optional] |
| **payment_rail** | [**PaymentRail**](PaymentRail.md) |  |  |
| **reason_code** | [**AchDisputeReasonCodes**](AchDisputeReasonCodes.md) |  | [optional] |
| **return_code** | [**AchDisputeReturnCodes**](AchDisputeReturnCodes.md) |  | [optional] |
| **state** | [**AchActionState**](AchActionState.md) |  |  |
| **supporting_doc_id** | **String** | The unique identifier of the supporting document | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::AchDisputeAction.new(
  action: null,
  message: null,
  originator_name: null,
  payment_rail: null,
  reason_code: null,
  return_code: null,
  state: null,
  supporting_doc_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7
)
```

