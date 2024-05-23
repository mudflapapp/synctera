# Synctera::UpdateTransfer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Field value must be set to CANCELED. It can only be changed when status is PENDING. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::UpdateTransfer.new(
  status: CANCELED
)
```

