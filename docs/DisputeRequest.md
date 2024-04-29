# Synctera::DisputeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_customer_reported** | **Time** | The timestamp representing when the customer reported the dispute. |  |
| **disputed_amount** | **Integer** | The amount to be disputed in cents. Disputes cannot exceed the full amount of the posted transaction. |  |
| **memo** | **String** | Memo or note describing the dispute. | [optional] |
| **transaction_id** | **String** | The ID of the posted transaction to be disputed. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::DisputeRequest.new(
  date_customer_reported: 2010-05-06T12:23:34.321Z,
  disputed_amount: null,
  memo: Some things about the dispute,
  transaction_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7
)
```

