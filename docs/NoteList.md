# Synctera::NoteList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **notes** | [**Array&lt;NoteResponse&gt;**](NoteResponse.md) | Array of notes |  |

## Example

```ruby
require 'synctera'

instance = Synctera::NoteList.new(
  next_page_token: a8937a0d,
  notes: null
)
```

