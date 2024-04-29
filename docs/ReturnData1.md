# Synctera::ReturnData1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **original_id** | **String** | Wire UUID of the original wire that was returned | [optional] |
| **original_transaction_id** | **String** | Transaction UUID of the original wire that was returned | [optional] |
| **previous_message_id** | **String** | Wire reference ID of the original wire that was returned |  |
| **reason** | **String** | The cause of the return | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::ReturnData1.new(
  original_id: null,
  original_transaction_id: null,
  previous_message_id: null,
  reason: null
)
```

