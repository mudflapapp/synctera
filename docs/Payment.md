# Synctera::Payment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | User provided description for the payment schedule | [optional] |
| **error_details** | [**PaymentErrorDetails**](PaymentErrorDetails.md) |  | [optional] |
| **id** | **String** | Payment ID | [optional] |
| **metadata** | **Object** | User provided JSON format data for the payment schedule | [optional] |
| **payment_date** | [**PaymentDate**](PaymentDate.md) |  | [optional] |
| **payment_instruction** | [**PaymentInstruction**](PaymentInstruction.md) |  | [optional] |
| **payment_schedule_id** | **String** | ID of the payment schedule that executed this payment | [optional] |
| **status** | [**PaymentStatus**](PaymentStatus.md) |  | [optional] |
| **transaction_id** | **String** | Transaction ID. It will be included only when status is COMPLETED | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::Payment.new(
  description: null,
  error_details: null,
  id: null,
  metadata: null,
  payment_date: null,
  payment_instruction: null,
  payment_schedule_id: null,
  status: null,
  transaction_id: null
)
```

