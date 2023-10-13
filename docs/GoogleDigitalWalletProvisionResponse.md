# Synctera::GoogleDigitalWalletProvisionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_id** | **String** | The unique identifier of a card | [optional] |
| **created_time** | **Time** |  | [optional] |
| **last_modified_time** | **Time** |  | [optional] |
| **push_tokenize_request_data** | [**PushTokenizeRequestData**](PushTokenizeRequestData.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::GoogleDigitalWalletProvisionResponse.new(
  card_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  created_time: 2010-05-06T12:23:34.321Z,
  last_modified_time: 2010-05-06T12:23:34.321Z,
  push_tokenize_request_data: null
)
```

