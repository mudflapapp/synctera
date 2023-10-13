# Synctera::PaymentSchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | User provided description for the payment schedule |  |
| **id** | **String** | Payment schedule ID | [optional][readonly] |
| **metadata** | **Object** | User provided JSON format data | [optional] |
| **next_payment_date** | [**PaymentDate**](PaymentDate.md) |  | [optional] |
| **payment_instruction** | [**PaymentInstruction**](PaymentInstruction.md) |  |  |
| **schedule** | [**ScheduleConfig**](ScheduleConfig.md) |  |  |
| **status** | [**PaymentScheduleStatus**](PaymentScheduleStatus.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::PaymentSchedule.new(
  description: null,
  id: null,
  metadata: null,
  next_payment_date: null,
  payment_instruction: null,
  schedule: null,
  status: null
)
```

