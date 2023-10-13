# Synctera::CardProductListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **card_products** | [**Array&lt;CardProductResponse&gt;**](CardProductResponse.md) | Array of Card Products |  |

## Example

```ruby
require 'synctera'

instance = Synctera::CardProductListResponse.new(
  next_page_token: a8937a0d,
  card_products: null
)
```

