# Synctera::BulkIssuanceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bulk_issuance_policy** | [**BulkIssuancePolicy**](BulkIssuancePolicy.md) |  | [default to &#39;AUTO&#39;] |
| **card_product_id** | **String** | The unique identifier of a cards product |  |
| **creation_time** | **Time** | The timestamp representing when the bulk order config was created | [optional][readonly] |
| **id** | **String** | The unique identifier of a bulk order configuration |  |
| **name** | **String** | Name associated with the bulk order configuration. |  |
| **shipping** | [**BulkShipping**](BulkShipping.md) |  |  |
| **tenant** | **String** | The id of the tenant containing the resource.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::BulkIssuanceResponse.new(
  bulk_issuance_policy: null,
  card_product_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  creation_time: 2010-05-06T12:23:34.321Z,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  name: Bulk Shipping to US Office,
  shipping: null,
  tenant: abcdef_ghijkl
)
```

