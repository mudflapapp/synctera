# Synctera::RelationshipList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **relationships** | [**Array&lt;RelationshipResponse&gt;**](RelationshipResponse.md) | Array of relationships |  |

## Example

```ruby
require 'synctera'

instance = Synctera::RelationshipList.new(
  next_page_token: a8937a0d,
  relationships: null
)
```

