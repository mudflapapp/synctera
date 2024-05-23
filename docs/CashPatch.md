# Synctera::CashPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination_account_id** | **String** | The UUID of the Synctera account resource that is the destination of the transfer for incoming transfers. This can only be updated if the transfer is suspended.  | [optional] |
| **source_data** | **Object** | Additional information to be added to the transfer | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::CashPatch.new(
  destination_account_id: fccb4a46-1261-4e91-b622-73b5b946183d,
  source_data: null,
  status: null
)
```

