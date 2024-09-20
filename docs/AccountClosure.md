# Synctera::AccountClosure

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_ids** | **Array&lt;String&gt;** | Case IDs associated with the account closure | [optional][readonly] |
| **destination_id** | **String** | For an ACH payment, this is the external account UUID. For an internal payment, this is the account UUID. |  |
| **payment_method** | **String** | Payment method for the final payment if the account being closed carries a balance. EXTERNAL is for an external payment that is issued outside the Synctera platform.  |  |
| **reason** | [**AccountClosureReason**](AccountClosureReason.md) |  |  |
| **reason_details** | **String** | Additional details about the reason for closing the account |  |
| **validation_responses** | [**Array&lt;AccountClosureValidationResponse&gt;**](AccountClosureValidationResponse.md) |  | [optional][readonly] |

## Example

```ruby
require 'synctera'

instance = Synctera::AccountClosure.new(
  case_ids: null,
  destination_id: null,
  payment_method: null,
  reason: null,
  reason_details: null,
  validation_responses: null
)
```

