# Synctera::BulkIssuanceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bulk_issuance_policy** | [**BulkIssuancePolicy**](BulkIssuancePolicy.md) |  | [default to &#39;AUTO&#39;] |
| **card_product_id** | **String** | The unique identifier of a cards product |  |
| **name** | **String** | Name associated with the bulk order configuration. |  |
| **shipping** | [**BulkShipping**](BulkShipping.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::BulkIssuanceRequest.new(
  bulk_issuance_policy: null,
  card_product_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  name: Bulk Shipping to US Office,
  shipping: null
)
```

