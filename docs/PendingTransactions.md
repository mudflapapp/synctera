# Synctera::PendingTransactions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. |  |
| **result** | [**Array&lt;PendingTransaction&gt;**](PendingTransaction.md) | List of pending transactions |  |

## Example

```ruby
require 'synctera'

instance = Synctera::PendingTransactions.new(
  next_page_token: null,
  result: null
)
```

