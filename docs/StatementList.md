# Synctera::StatementList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **statements** | [**Array&lt;StatementSummary&gt;**](StatementSummary.md) | Array of statements |  |

## Example

```ruby
require 'synctera'

instance = Synctera::StatementList.new(
  next_page_token: a8937a0d,
  statements: null
)
```

