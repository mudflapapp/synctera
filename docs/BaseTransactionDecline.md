# Synctera::BaseTransactionDecline

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **decline_details** | **String** | Additional detail about the decline. | [optional] |
| **reason** | **String** | The reason the transaction was declined |  |

## Example

```ruby
require 'synctera'

instance = Synctera::BaseTransactionDecline.new(
  decline_details: null,
  reason: null
)
```

