# Synctera::TransactionList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **transactions** | [**Array&lt;Transaction&gt;**](Transaction.md) | Array of statement transactions |  |

## Example

```ruby
require 'synctera'

instance = Synctera::TransactionList.new(
  next_page_token: a8937a0d,
  transactions: null
)
```

