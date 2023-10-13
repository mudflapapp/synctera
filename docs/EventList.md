# Synctera::EventList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **event_list** | [**Array&lt;Event&gt;**](Event.md) | Array of events |  |

## Example

```ruby
require 'synctera'

instance = Synctera::EventList.new(
  next_page_token: a8937a0d,
  event_list: null
)
```

