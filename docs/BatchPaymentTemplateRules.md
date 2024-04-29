# Synctera::BatchPaymentTemplateRules

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hold_time** | **Integer** | The number of minutes that the batch transfer will be held before being processed.  | [optional] |
| **payment_rail** | **String** | The payment rail that will be used to process the batch transfer.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::BatchPaymentTemplateRules.new(
  hold_time: null,
  payment_rail: null
)
```

