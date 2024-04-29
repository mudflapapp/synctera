# Synctera::AdverseActionList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **adverse_actions** | [**Array&lt;AdverseActionResponse&gt;**](AdverseActionResponse.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::AdverseActionList.new(
  next_page_token: a8937a0d,
  adverse_actions: null
)
```

