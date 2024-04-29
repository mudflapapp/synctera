# Synctera::AchDisputeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The customer account related to the dispute, to which dispute-related credits will be posted. |  |
| **applicable_regulation** | [**DisputeRegulation**](DisputeRegulation.md) |  | [optional] |
| **creation_time** | **Time** | The timestamp representing when the dispute was created | [readonly] |
| **credit_status** | [**DisputeCreditStatus**](DisputeCreditStatus.md) |  |  |
| **currency** | **String** | ISO 4217 Alpha-3 currency code |  |
| **customer_id** | **String** | The customer related to the dispute, to which dispute-related credits will be posted. |  |
| **date_customer_reported** | **Time** | The timestamp representing when the customer reported the dispute. |  |
| **decision** | [**DisputeDecision**](DisputeDecision.md) |  |  |
| **dispute_documents** | [**Array&lt;DisputeDocumentResponse&gt;**](DisputeDocumentResponse.md) | Documents associated with the dispute. |  |
| **disputed_amount** | **Integer** | The amount to be disputed in cents. |  |
| **id** | **String** | The unique identifier of the dispute | [readonly] |
| **last_action_by** | [**DisputeActionBy**](DisputeActionBy.md) |  | [optional] |
| **last_updated_time** | **Time** | The timestamp representing when the dispute was last modified | [readonly] |
| **network** | [**DisputeNetwork**](DisputeNetwork.md) |  |  |
| **payment_rail** | [**PaymentRail**](PaymentRail.md) |  |  |
| **status** | [**DisputeStatus**](DisputeStatus.md) |  |  |
| **tenant** | **String** | The id of the tenant containing the resource.  |  |
| **timestamp_provisional_credit_due** | **Time** | The time by which provisional credit should be posted to the customer account in response to the dispute. | [optional] |
| **transaction_id** | **String** | The ID of the posted transaction to be disputed. |  |
| **action_history** | [**Array&lt;AchDisputeActionResponse&gt;**](AchDisputeActionResponse.md) | History of all the action filed for the dispute. |  |
| **available_actions** | [**Array&lt;AvailableAchAction&gt;**](AvailableAchAction.md) | List of actions that can be taken on the dispute. |  |
| **lifecycle_state** | [**AchLifecycleState**](AchLifecycleState.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::AchDisputeResponse.new(
  account_id: ca4450a5-5d4c-4afc-9533-729e2948c477,
  applicable_regulation: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  credit_status: null,
  currency: USD,
  customer_id: 52593ea7-4d66-40df-80e9-3b9bc54fa880,
  date_customer_reported: 2010-05-06T12:23:34.321Z,
  decision: null,
  dispute_documents: null,
  disputed_amount: null,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  last_action_by: null,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  network: null,
  payment_rail: null,
  status: null,
  tenant: abcdef_ghijkl,
  timestamp_provisional_credit_due: 2010-05-06T12:23:34.321Z,
  transaction_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  action_history: null,
  available_actions: null,
  lifecycle_state: null
)
```

