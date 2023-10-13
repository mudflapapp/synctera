# Synctera::RelationshipsList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **relationships** | [**Array&lt;RelationshipIn&gt;**](RelationshipIn.md) | Array of business/person relationships. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::RelationshipsList.new(
  next_page_token: a8937a0d,
  relationships: null
)
```

