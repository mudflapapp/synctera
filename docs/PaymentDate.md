# Synctera::PaymentDate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **execution_date** | **Date** | Execution date for the next payment |  |
| **scheduled_date** | **Date** | Scheduled date for the next payment |  |

## Example

```ruby
require 'synctera'

instance = Synctera::PaymentDate.new(
  execution_date: null,
  scheduled_date: null
)
```

