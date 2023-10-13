# Synctera::CreateCardImageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_product_id** | **String** | The unique identifier of a cards product |  |
| **customer_id** | **String** | The unique identifier of a customer |  |

## Example

```ruby
require 'synctera'

instance = Synctera::CreateCardImageRequest.new(
  card_product_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  customer_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7
)
```

