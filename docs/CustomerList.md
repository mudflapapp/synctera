# Synctera::CustomerList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **customers** | [**Array&lt;CustomerInBody&gt;**](CustomerInBody.md) | Array of Customers |  |

## Example

```ruby
require 'synctera'

instance = Synctera::CustomerList.new(
  next_page_token: a8937a0d,
  customers: null
)
```

