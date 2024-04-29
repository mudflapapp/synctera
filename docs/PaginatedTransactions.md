# Synctera::PaginatedTransactions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the value of &#x60;next_page_token&#x60; in the &#x60;page_token&#x60; query parameter to query for the next page of results. This will be &#x60;null&#x60; if there are no more pages. |  |
| **transactions** | [**Array&lt;Transaction1&gt;**](Transaction1.md) | List of transactions |  |

## Example

```ruby
require 'synctera'

instance = Synctera::PaginatedTransactions.new(
  next_page_token: null,
  transactions: null
)
```

