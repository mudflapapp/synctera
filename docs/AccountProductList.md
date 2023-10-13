# Synctera::AccountProductList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **account_products** | [**Array&lt;AccountProduct&gt;**](AccountProduct.md) | Array of account products |  |

## Example

```ruby
require 'synctera'

instance = Synctera::AccountProductList.new(
  next_page_token: a8937a0d,
  account_products: null
)
```

