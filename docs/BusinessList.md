# Synctera::BusinessList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **businesses** | [**Array&lt;Business&gt;**](Business.md) | Array of businesses. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::BusinessList.new(
  next_page_token: a8937a0d,
  businesses: null
)
```

