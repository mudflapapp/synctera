# Synctera::DocumentList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **documents** | [**Array&lt;DocumentResponse&gt;**](DocumentResponse.md) | Array of documents |  |

## Example

```ruby
require 'synctera'

instance = Synctera::DocumentList.new(
  next_page_token: a8937a0d,
  documents: null
)
```

