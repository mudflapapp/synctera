# Synctera::Lookup3dsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **challenge_payload** | **String** | 3DS challenge payload, returned if challenge is required | [optional] |
| **challenge_url** | **String** | 3DS challenge URL, returned if challenge is required | [optional] |
| **id** | **String** | The unique identifier of the 3DS authentication |  |
| **processor_transaction_id** | **String** | Processor Transaction ID, returned if challenge is required | [optional] |
| **status** | **String** | Status of the 3DS authentication |  |

## Example

```ruby
require 'synctera'

instance = Synctera::Lookup3dsResponse.new(
  challenge_payload: null,
  challenge_url: null,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  processor_transaction_id: null,
  status: null
)
```

