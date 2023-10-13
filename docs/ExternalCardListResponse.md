# Synctera::ExternalCardListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **external_cards** | [**Array&lt;ExternalCardResponse&gt;**](ExternalCardResponse.md) | Array of External Cards |  |

## Example

```ruby
require 'synctera'

instance = Synctera::ExternalCardListResponse.new(
  next_page_token: a8937a0d,
  external_cards: null
)
```

