# Synctera::CreditScoreList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **credit_scores** | [**Array&lt;CreditScoreResponse&gt;**](CreditScoreResponse.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::CreditScoreList.new(
  next_page_token: a8937a0d,
  credit_scores: null
)
```

