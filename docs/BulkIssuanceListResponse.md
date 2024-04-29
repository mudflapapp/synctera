# Synctera::BulkIssuanceListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **bulk_order_configs** | [**Array&lt;BulkIssuanceResponse&gt;**](BulkIssuanceResponse.md) | Array of bulk order configurations |  |

## Example

```ruby
require 'synctera'

instance = Synctera::BulkIssuanceListResponse.new(
  next_page_token: a8937a0d,
  bulk_order_configs: null
)
```

