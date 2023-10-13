# Synctera::CardChangesList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **changes** | [**Array&lt;CardChange&gt;**](CardChange.md) | List of changes in descending chronological order |  |

## Example

```ruby
require 'synctera'

instance = Synctera::CardChangesList.new(
  next_page_token: a8937a0d,
  changes: null
)
```

