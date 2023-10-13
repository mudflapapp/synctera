# Synctera::ResponseHistoryItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | Response code from the request | [optional] |
| **response_body** | **String** | Response body from the request(Length more than 1024 will be trimmed) | [optional] |
| **response_time** | **Time** | Timestamp that the response is received | [optional] |
| **sent_time** | **Time** | Timestamp that the request is sent | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::ResponseHistoryItem.new(
  code: null,
  response_body: null,
  response_time: null,
  sent_time: null
)
```

