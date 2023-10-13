# Synctera::UpdateCardImageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rejection_memo** | **String** |  | [optional] |
| **rejection_reason** | [**CardImageRejectionReason**](CardImageRejectionReason.md) |  | [optional] |
| **status** | [**CardImageStatus**](CardImageStatus.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::UpdateCardImageRequest.new(
  rejection_memo: null,
  rejection_reason: null,
  status: null
)
```

