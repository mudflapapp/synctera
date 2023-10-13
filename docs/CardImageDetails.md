# Synctera::CardImageDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_product_id** | **String** | The unique identifier of a cards product |  |
| **customer_id** | **String** | The unique identifier of a customer |  |
| **id** | **String** | The unique identifier of a card image |  |
| **rejection_memo** | **String** |  | [optional] |
| **rejection_reason** | [**CardImageRejectionReason**](CardImageRejectionReason.md) |  | [optional] |
| **status** | [**CardImageStatus**](CardImageStatus.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::CardImageDetails.new(
  card_product_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  customer_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  rejection_memo: null,
  rejection_reason: null,
  status: null
)
```

