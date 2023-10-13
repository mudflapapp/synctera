# Synctera::CardListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **cards** | [**Array&lt;CardResponse&gt;**](CardResponse.md) | Array of Cards |  |

## Example

```ruby
require 'synctera'

instance = Synctera::CardListResponse.new(
  next_page_token: a8937a0d,
  cards: null
)
```

